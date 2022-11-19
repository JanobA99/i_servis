import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:crypto/crypto.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hive/hive.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:open_mail_app/open_mail_app.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:twitter_login/twitter_login.dart';
import 'package:universal_shop/constants.dart';
import 'package:universal_shop/domain/common/social_sign_in_types.dart';
import 'package:universal_shop/infrastructure/extensions/check_is_phone_number.dart';
import 'package:universal_shop/infrastructure/extensions/firebase_user_to_user_model.dart';
import 'package:universal_shop/infrastructure/models/auth/auth_model.dart';
import 'package:universal_shop/infrastructure/models/market/market_model.dart';
import 'package:universal_shop/infrastructure/models/order/order_model.dart';
import 'package:universal_shop/infrastructure/models/user/user_model.dart';
import 'package:universal_shop/infrastructure/repositories/auth_repo.dart';
import 'package:universal_shop/infrastructure/repositories/image_upload_repo.dart';
import 'package:universal_shop/infrastructure/services/image_service.dart';
import 'package:universal_shop/main.dart';
import 'package:universal_shop/presentation/pages/auth/verify_code.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';
import 'package:wechat_camera_picker/wechat_camera_picker.dart';

import '../../domain/core/hive_keys.dart';
import '../../infrastructure/models/product/product_model.dart';
import '../../presentation/routes/routes.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final AuthRepo authRepo;

  AuthBloc({required this.authRepo}) : super(const _SignInState()) {
    on<_SignUp>(_signUp);
    on<_SocialSignIn>(_signIn);
    on<_ForgotPassword>(_forgotPassword);
    on<_SignOut>(_signOut);
    on<_ImagePick>(_imagePick);
    on<_GetUser>(_getUser);
    on<_UpdateEmail>(_updateEmail);
    on<_UpdateName>(_updateName);
    on<_UpdatePassword>(_updatePassword);
    on<_UpdatePhoto>(_updatePhoto);
    on<_ChangeTabBarIndex>(_changeTabBarIndex);
    on<_UpdatePhoneNumber>(_updatePhoneNumber);
  }

  Future<void> _signUp(
    _SignUp login,
    Emitter<AuthState> emit,
  ) async {
    if (login.login.email == null || login.login.email!.isEmpty) {
      emit(state.copyWith(isEmailValid: false));
    } else {
      emit(state.copyWith(isEmailValid: true));
    }
    if (login.login.password == null || login.login.password!.isEmpty) {
      if(login.login.email!.isMobileNumberValid){
        emit(state.copyWith(isPasswordValid: true));
      }else {
        emit(state.copyWith(isPasswordValid: false));
      }
    } else {
      emit(state.copyWith(isPasswordValid: true));
    }

    if (login.login.username == null || login.login.username!.isEmpty) {
      emit(state.copyWith(isUserNameValid: false));
    } else {
      emit(state.copyWith(isUserNameValid: true));
    }

    await _verifyEmail(login.login.email, emit);
    if(!login.login.email!.isMobileNumberValid) {
      await _verifyPassword(login.login.password, emit);
    }

    if (state.isEmailValid && state.isPasswordValid && state.isUserNameValid) {
      await _signUpWithEmail(login, emit);
    }
  }

  Future<void> _signUpWithEmail(
    _SignUp value,
    Emitter<AuthState> emit,
  ) async {
    if(value.login.email!.isMobileNumberValid){
      await _phoneSignUp(value:value, emit: emit);
    }else {
      emit(state.copyWith(navigateToHome: false));
      EasyLoading.show();
      p("13213 ${value.login.toString()}");
      User? user = _auth.currentUser;
      p("${user != null} ${user?.isAnonymous} $user");
      final UserCredential userCredential;

      try {
        if (user != null && user.isAnonymous) {
          final credential = EmailAuthProvider.credential(
              email: value.login.email!, password: value.login.password!);
          userCredential = await user.linkWithCredential(credential);
        } else {
          userCredential = await _auth.createUserWithEmailAndPassword(
            email: value.login.email!,
            password: value.login.password!,
          );
        }
        if (userCredential.user != null &&
            !userCredential.user!.emailVerified) {
          String imageUrl = await ImageUploadRepo.imageUpload(value.images);
          if (imageUrl.isNotEmpty) {
            p(imageUrl);
            await userCredential.user!.updatePhotoURL(imageUrl);
          }
          await userCredential.user!.updateDisplayName(value.login.username);
          var actionCodeSettings = ActionCodeSettings(
            url: '${Constants.firebaseUrl}/?email=${userCredential.user!.email}',
            dynamicLinkDomain: Constants.dynamicLinkDomain,
            androidPackageName: Constants.androidPackageName,
            androidInstallApp: true,
            androidMinimumVersion: '12',
            iOSBundleId: Constants.iOSBundleId,
            handleCodeInApp: true,
          );
          authRepo.setFcmToken(userCredential.user!.getUid);
          await userCredential.user!.sendEmailVerification(actionCodeSettings);
          EasyLoading.showSuccess("check_your_email".tr());
          emit(state.copyWith(navigateToHome: true));

          OpenMailApp.openMailApp();
        }
      } on FirebaseAuthException catch (e) {
        p(e);
        EasyLoading.showError(e.message ?? "");
      } catch (e) {
        p(e);
        EasyLoading.showError(e.toString());
      }
    }
  }

  Future<void> _phoneSignUp({
    required _SignUp value,
    required Emitter<AuthState> emit,
  }) async {
    EasyLoading.dismiss();
      try {
        if (kIsWeb) {
          _auth.signInWithPhoneNumber(value.login.email!).then((confirmationResult) {
            getSmsCodeFromUser(value.context).then((smsCode) async{
              if (smsCode != null) {
                await confirmationResult.confirm(smsCode);
              }
            });
          });
        } else {
          await _auth.verifyPhoneNumber(
            phoneNumber: value.login.email!,
            verificationCompleted: (_) {},
            verificationFailed: (e) {
            EasyLoading.showError(e.message??"");
            },
            codeSent: (String verificationId, int? resendToken) async {
              final smsCode = await getSmsCodeFromUser(value.context);

              if (smsCode != null) {
                final credential = PhoneAuthProvider.credential(
                  verificationId: verificationId,
                  smsCode: smsCode,
                );
                User? user = _auth.currentUser;
                p("${user != null} ${user?.isAnonymous} $user");
                final UserCredential userCredential;
                try {
                  if (user != null && user.isAnonymous) {
                    userCredential = await user.linkWithCredential(credential);
                  }else{
                    userCredential =
                    await _auth.signInWithCredential(credential);

                  }
              if(userCredential.user!=null){
                String imageUrl = await ImageUploadRepo.imageUpload(value.images);
                if (imageUrl.isNotEmpty) {
                  p(imageUrl);
                  await userCredential.user!.updatePhotoURL(imageUrl);
                }
                await userCredential.user!.updateDisplayName(value.login.username).then((v) async{
                  userCredential.user!.reload();
                    p(userCredential.user!);
                    authRepo.setFcmToken(userCredential.user!.getUid);
                  Navigator.pushAndRemoveUntil(
                      value.context,
                      Routes.getMainRoute(value.context),
                          (_)=>false
                  );
                  });
                EasyLoading.dismiss();

              }
                } on FirebaseAuthException catch (e) {
                  EasyLoading.showError(e.message??"");
                }
              }
            },
            codeAutoRetrievalTimeout: (e) {

            },
          );
        }
      } catch (e) {
        EasyLoading.showError(e.toString());
      }
  }



  void _signIn(_SocialSignIn value, Emitter<AuthState> emit) async {
    EasyLoading.show();
    switch (value.type) {
      case SocialSignInType.anonymous:
        await _signInAnonymously(emit);
        break;
      case SocialSignInType.phone:
        await _phoneSignIn(value: value, emit: emit);
        break;
      case SocialSignInType.email:
        await _signInEmail(emit, value);
        break;
      case SocialSignInType.google:
        await _signInGoogle(emit);
        break;
      case SocialSignInType.twitter:
        await _signInTwitter(emit);
        break;
      case SocialSignInType.apple:
        await _signInApple(emit);
        break;
      case SocialSignInType.facebook:
        await _signInFacebook(emit);
        break;
      default:
    }
  }

  Future<void> _signInAnonymously(Emitter<AuthState> emit) async {
    emit(state.copyWith(navigateToHome: false));
    try {
      await _auth.signInAnonymously();
      EasyLoading.dismiss();
      if (_auth.currentUser != null) {
        authRepo.setFcmToken(_auth.currentUser!.uid);
      }
      emit(state.copyWith(navigateToHome: true));
    } catch (e) {
      if(e is FirebaseAuthException) {
        EasyLoading.showError(e.message??"unknown_error".tr());
      }else {
        EasyLoading.showError(e.toString());
      }
    }
  }

  Future<void> _signInEmail(
      Emitter<AuthState> emit, _SocialSignIn value) async {
    if (value.login?.email == null || value.login?.email != "") {
      emit(state.copyWith(isEmailValid: false));
    } else {
      emit(state.copyWith(isEmailValid: true));
    }
    if (value.login?.password == null || value.login?.password != "") {
      emit(state.copyWith(isPasswordValid: false));
    } else {
      emit(state.copyWith(isPasswordValid: true));
    }
    await _verifyEmail(value.login?.email, emit);
    await _verifyPassword(value.login?.password, emit);
    if (state.isEmailValid && state.isPasswordValid) {
      emit(state.copyWith(navigateToHome: false));
      try {
        UserCredential userCredential = await _auth.signInWithEmailAndPassword(
            email: value.login?.email ?? "",
            password: value.login?.password ?? "");
        if (userCredential.user != null) {
          EasyLoading.dismiss();
          authRepo.setFcmToken(userCredential.user!.getUid);
          emit(state.copyWith(navigateToHome: true));
          p("signInUserCredential ${userCredential.user.toString()}");
        } else {
          EasyLoading.showError("invalid_credential".tr());
        }
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          EasyLoading.showError('user_not_found'.tr());
        } else if (e.code == 'wrong-password') {
          EasyLoading.showError('wrong_password'.tr());
        }
      } catch (e) {
        if(e is FirebaseAuthException) {
          EasyLoading.showError(e.message??"unknown_error".tr());
        }else {
          EasyLoading.showError(e.toString());
        }
      }
    } else {
      EasyLoading.dismiss();
    }
  }


  Future<void> _phoneSignIn({
    required _SocialSignIn value,
    required Emitter<AuthState> emit,
  }) async {
    if(value.login!=null) {
      emit(state.copyWith(navigateToHome: false));
        EasyLoading.dismiss();
      try {
        if (kIsWeb) {
          _auth.signInWithPhoneNumber(value.login!.email!).then((confirmationResult) {
            getSmsCodeFromUser(value.context).then((smsCode) async{
              if (smsCode != null) {
                await confirmationResult.confirm(smsCode);
              }
            });
          });
        } else {
          EasyLoading.show();
          await _auth.verifyPhoneNumber(
            phoneNumber: value.login!.email!,
            verificationCompleted: (_) {
              EasyLoading.dismiss();
            },
            verificationFailed: (e) {
              print("_phoneSignIn1 $e");
              EasyLoading.showError(e.message ?? "");
            },
            codeSent: (String verificationId, int? resendToken) async {
              final smsCode = await getSmsCodeFromUser(value.context);

              if (smsCode != null) {
                final credential = PhoneAuthProvider.credential(
                  verificationId: verificationId,
                  smsCode: smsCode,
                );
                User? user = _auth.currentUser;
                p("${user != null} ${user?.isAnonymous} $user");
                try {
                  if (user != null && user.isAnonymous) {
                    await user.linkWithCredential(credential).then((userCredential) {
                      if (userCredential.user != null) {
                        authRepo.setFcmToken(userCredential.user!.getUid);
                        Navigator.pushAndRemoveUntil(value.context,
                            Routes.getMainRoute(value.context), (_) => false);
                      }
                    });
                  } else {

                    await _auth.signInWithCredential(credential).then((userCredential) {
                      if (userCredential.user != null) {
                        authRepo.setFcmToken(userCredential.user!.getUid);
                        Navigator.pushAndRemoveUntil(value.context,
                            Routes.getMainRoute(value.context), (_) => false);
                      }
                    });
                  }

                  EasyLoading.dismiss();
                } on FirebaseAuthException catch (e) {
                  print("_phoneSignIn2 $e");
                  EasyLoading.showError(e.message ?? "");
                } catch (e) {
                  print("_phoneSignIn3 $e");
                  EasyLoading.showError(e.toString());
                }
              }
            },
            codeAutoRetrievalTimeout: (e) {
              EasyLoading.dismiss();
            },
          );
        }
      } catch (e) {
        print("_phoneSignIn4 $e");
        EasyLoading.showError(e.toString());
      }
    }else{
      EasyLoading.dismiss();
    }
  }


  Future<void> _signInGoogle(Emitter<AuthState> emit) async {
    emit(state.copyWith(navigateToHome: false));
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser != null) {
        final GoogleSignInAuthentication googleAuth =
            await googleUser.authentication;
        final OAuthCredential googleCredential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
       User? currentUser =    _auth.currentUser;
       if(currentUser!=null) {
        await _updateUserWithCredential(googleCredential, currentUser, emit);
       }else{
        await _createUserWithCredential(googleCredential, emit);
       }
      } else {
        EasyLoading.dismiss();
      }
    } catch (e) {
      if(e is FirebaseAuthException) {
        p(e.code);
        EasyLoading.showError(e.message??"unknown_error".tr());
      }else {
        EasyLoading.showError(e.toString());
      }
    }
  }

  Future<void> _signInTwitter(Emitter<AuthState> emit) async {
    emit(state.copyWith(navigateToHome: false));
    EasyLoading.show(dismissOnTap: true);
    try {
      final twitterLogin = TwitterLogin(
        apiKey: Constants.twitterApiKey,
        apiSecretKey: Constants.twitterApiSecretKey,
        redirectURI: '${Constants.twitterCallBackUrl}://',
      );
      final authResult = await twitterLogin.login();
      switch (authResult.status!) {
        case TwitterLoginStatus.loggedIn:
          final AuthCredential twitterAuthCredential =
              TwitterAuthProvider.credential(
                  accessToken: authResult.authToken!,
                  secret: authResult.authTokenSecret!);
          User? currentUser =    _auth.currentUser;
          if(currentUser!=null) {
          await  _updateUserWithCredential(twitterAuthCredential, currentUser, emit);
          }else{
          await  _createUserWithCredential(twitterAuthCredential, emit);
          }
          break;
        case TwitterLoginStatus.cancelledByUser:
          EasyLoading.dismiss();
          break;
        case TwitterLoginStatus.error:
          EasyLoading.showError(
              authResult.errorMessage ?? "invalid_credential".tr());
          break;
      }
    } catch (e) {
      if(e is FirebaseAuthException) {
        EasyLoading.showError(e.message??"unknown_error".tr());
      }else {
        EasyLoading.showError(e.toString());
      }
    }
  }

  Future<void> _signInApple(Emitter<AuthState> emit) async {
    emit(state.copyWith(navigateToHome: false));
    try {
      final random = Random.secure();
      const charset =
          '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
      final rawNonce =
          List.generate(32, (_) => charset[random.nextInt(charset.length)])
              .join();
      final nonce = sha256.convert(utf8.encode(rawNonce)).toString();
      final credential = await SignInWithApple.getAppleIDCredential(scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ], nonce: nonce);

      if (credential.authorizationCode.isNotEmpty) {
        final oauthCredential = OAuthProvider("apple.com").credential(
          idToken: credential.identityToken,
          rawNonce: rawNonce,
        );
        User? currentUser =    _auth.currentUser;
        if(currentUser!=null) {
         await _updateUserWithCredential(oauthCredential, currentUser, emit);
        }else{
          await _createUserWithCredential(oauthCredential, emit);
        }
      } else {
        EasyLoading.dismiss();
      }
    } catch (e) {
      if(e is FirebaseAuthException) {
        EasyLoading.showError(e.message??"unknown_error".tr());
      }else {
        EasyLoading.dismiss();
      }
      p(e);
      // EasyLoading.showError('unknown_error'.tr());
    }
  }

  Future<void> _signInFacebook(Emitter<AuthState> emit) async {
    emit(state.copyWith(navigateToHome: false));
    try {
      final LoginResult result =
          await FacebookAuth.instance.login(permissions: [
        'email',
        'public_profile',
        'user_birthday',
        'user_friends',
        'user_gender',
        'user_link'
      ]);
      p(result.status);
      p(result.message ?? "");
      p(result.accessToken?.toJson() ?? "");
      if (result.status == LoginStatus.success) {
        final OAuthCredential facebookAuthCredential =
            FacebookAuthProvider.credential(result.accessToken!.token);

        User? currentUser =    _auth.currentUser;
        if(currentUser!=null) {
          await  _updateUserWithCredential(facebookAuthCredential, currentUser, emit);
        }else{
          await  _createUserWithCredential(facebookAuthCredential, emit);
        }
      } else {
        EasyLoading.dismiss();
      }
    } catch (e) {
      p(e);
      if(e is FirebaseAuthException) {
        EasyLoading.showError(e.message??"unknown_error".tr());
      }else {
        EasyLoading.showError(e.toString());
      }
    }
  }


  Future<void> _updateUserWithCredential(AuthCredential authCredential, User currentUser, Emitter<AuthState> emit,)async{
    try {
      UserCredential userCredential = await currentUser.linkWithCredential(
          authCredential);
      if (userCredential.user != null) {
        UserModel? userModel = await authRepo
            .getUser(userCredential.user!.getUid);
        if (userModel == null) {
          authRepo.setFcmToken(userCredential.user!.getUid);
        }
      }
      EasyLoading.dismiss();
    }catch(e){
      if(e is FirebaseAuthException) {
        p(e.code);
        if(e.code=='credential-already-in-use'){
        await  _createUserWithCredential(authCredential, emit);
        }else {
          EasyLoading.showError(e.message ?? "unknown_error".tr());
        }
      }else {
        EasyLoading.showError(e.toString());
      }
    }
  }

  Future<void> _createUserWithCredential(AuthCredential authCredential, Emitter<AuthState> emit,)async{
    final UserCredential userCredential =
    await _auth.signInWithCredential(authCredential);
    if (userCredential.user != null) {
      p("googleUserCredential ${userCredential.user.toString()}");
      UserModel? userModel = await authRepo
          .getUser(userCredential.user!.getUid);
      if (userModel == null) {
        authRepo.setFcmToken(userCredential.user!.getUid);
      }
      EasyLoading.dismiss();
      emit(state.copyWith(navigateToHome: true));
    } else {
      EasyLoading.showError("invalid_credential".tr());
    }
  }

  Future<void> _forgotPassword(
      _ForgotPassword value, Emitter<AuthState> emit) async {
    emit(state.copyWith(navigatorPop: false));
    await _auth.sendPasswordResetEmail(email: value.email.email ?? "");
    OpenMailApp.openMailApp();
    EasyLoading.showSuccess("check_your_email".tr());
    emit(state.copyWith(navigatorPop: true));
  }

  Future<void> _signOut(_SignOut value, Emitter<AuthState> emit) async {
    emit(state.copyWith(signOut: false));
    EasyLoading.show();
    try {
      Box<UserModel> modelBox = Hive.box(HiveKeys.users);
      await modelBox.delete("me");
      Box<ProductDetailModel> productBox = Hive.box<ProductDetailModel>(
          HiveKeys.baskets);
      await productBox.deleteFromDisk();
      Box<OrderModel> myOrdersBox = Hive.box<OrderModel>(
          HiveKeys.myOrders);
      await myOrdersBox.deleteFromDisk();
      Box<OrderModel> marketOrdersBox = Hive.box<OrderModel>(
          HiveKeys.marketsOrders);
      await marketOrdersBox.deleteFromDisk();
      Box<MarketModel> myMarketsBox = Hive.box<MarketModel>(
          HiveKeys.myMarkets);
      await myMarketsBox.deleteFromDisk();
      GoogleSignIn googleSignIn = GoogleSignIn();
      await _auth.signOut();
      await Hive.openBox<ProductDetailModel>(HiveKeys.baskets);
      await Hive.openBox<OrderModel>(HiveKeys.myOrders);
      await Hive.openBox<MarketModel>(HiveKeys.myMarkets);
      await Hive.openBox<OrderModel>(HiveKeys.marketsOrders);
      emit(state.copyWith(signOut: true));
      EasyLoading.dismiss();
      googleSignIn.disconnect();
      p("dsjhjsad ${state.signOut}");
    }catch(e){
      p("_signOut $e");
    }
  }

  Future<void> _imagePick(
      _ImagePick value,
      Emitter<AuthState> emit,
      ) async {
    List<AssetEntity> assets = await ImageService.showPicker(value.context, cropStyle: CropStyle.circle, aspectRatioPresets: [CropAspectRatioPreset.square])??[];
    if(assets.isNotEmpty) {
      if (value.isSignUp) {
        emit(state.copyWith(assetEntity: assets.first));
      } else {
        emit(state.copyWith(profileAssetEntity: assets.first));
      }
    }
  }


  Future<void> _verifyEmail(
    String? email,
    Emitter<AuthState> emit,
  ) async {
    final v = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    if (v.hasMatch(email!) || email.isMobileNumberValid) {
      emit(state.copyWith(isEmailValid: true));
    } else {
      emit(state.copyWith(isEmailValid: false));
    }
  }

  Future<void> _verifyPassword(
    String? password,
    Emitter<AuthState> emit,
  ) async {
    if (password!.length < 8) {
      emit(state.copyWith(isPasswordValid: false));
    } else {
      emit(state.copyWith(isPasswordValid: true));
    }
  }

  Future<void> _getUser(_, Emitter<AuthState> emit) async {
    if (_auth.currentUser != null) {
      UserModel? userModel = await authRepo.getUser(
          _auth.currentUser!.getUid);
      if (userModel != null) {
        authRepo.setUserToBox(userModel);
      }else{
        authRepo.setUserToBox(_auth.currentUser!.firebaseUserToUserModel);
      }
    }
  }

  FutureOr<void> _updatePhoneNumber(
    _UpdatePhoneNumber value,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith());
    EasyLoading.show();
    try {
      if (kIsWeb) {
         _auth.signInWithPhoneNumber(value.phoneNumber).then((confirmationResult) {
           getSmsCodeFromUser(value.context).then((smsCode) async{
             if (smsCode != null) {
               await confirmationResult.confirm(smsCode);
             }
           });
         });
      } else {
        await _auth.verifyPhoneNumber(
          phoneNumber: value.phoneNumber,
          verificationCompleted: (_) {
            EasyLoading.dismiss();
          },
          verificationFailed: (e) {
            EasyLoading.showError(e.message ?? "");
          },
          codeSent: (String verificationId, int? resendToken) async {
            final smsCode = await getSmsCodeFromUser(value.context);

            if (smsCode != null) {
              final credential = PhoneAuthProvider.credential(
                verificationId: verificationId,
                smsCode: smsCode,
              );
              User? user = _auth.currentUser;

              if (user != null) {
                try {
                  await user.updatePhoneNumber(credential);

                  EasyLoading.dismiss();
                } on FirebaseAuthException catch (e) {
                  p(e.message ?? "");
                  EasyLoading.showError(e.message ?? "");
                } catch (e) {
                  EasyLoading.showError(e.toString());
                }
              }
            } else {
              EasyLoading.dismiss();
            }
          },
          codeAutoRetrievalTimeout: (e) {
            EasyLoading.dismiss();
          },
        );
      }
    } catch (e) {
      EasyLoading.showError(e.toString());
    }
  }

  Future<void> _updateEmail(
    _UpdateEmail value,
    Emitter<AuthState> emit,
  ) async {
    EasyLoading.show();
    try {
      User? user = _auth.currentUser;
      if (user != null) {
        UserCredential userCredential = await user.reauthenticateWithCredential(
          EmailAuthProvider.credential(
            email: user.email!,
            password: value.password,
          ),
        );
        if(userCredential.user!=null) {
          var actionCodeSettings = ActionCodeSettings(
          url: '${Constants.firebaseUrl}/?email=${userCredential.user!.email}',
          dynamicLinkDomain: Constants.dynamicLinkDomain,
          androidPackageName: Constants.androidPackageName,
          androidInstallApp: true,
          androidMinimumVersion: '9',
          iOSBundleId: Constants.iOSBundleId,
          handleCodeInApp: true,
        );
        await userCredential.user!.updateEmail(value.email);
        await userCredential.user!.sendEmailVerification(actionCodeSettings);
        EasyLoading.showSuccess("check_your_email".tr());
        OpenMailApp.openMailApp();
      }
      } else {
        EasyLoading.showError("unknown_error".tr());
      }
    } on FirebaseException catch (e) {
      p(e.message ?? "");
      EasyLoading.showError(e.message ?? "");
    } catch (e) {
      p(e);
      EasyLoading.showError(e.toString());
    }
  }

  Future<void> _updateName(
    _UpdateName value,
    Emitter<AuthState> emit,
  ) async {
    EasyLoading.show();
    try {
      User? user = _auth.currentUser;

      if (user != null) {
        await user.updateDisplayName(value.name);
      } else {
        EasyLoading.showError("unknown_error".tr());
      }
    } on FirebaseException catch (e) {
      p(e.message ?? "");
      EasyLoading.showError(e.message ?? "");
    } catch (e) {
      p(e);
      EasyLoading.showError(e.toString());
    }
  }

  Future<void> _updatePassword(
    _UpdatePassword value,
    Emitter<AuthState> emit,
  ) async {
    EasyLoading.show();
    try {
      User? user = _auth.currentUser;
      if (user != null) {
        UserCredential userCredential = await user.reauthenticateWithCredential(
          EmailAuthProvider.credential(
            email: user.email!,
            password: value.oldPassword,
          ),
        );
        await userCredential.user?.updatePassword(value.newPassword);
        EasyLoading.showSuccess("success".tr());
      } else {
        EasyLoading.showError("unknown_error".tr());
      }
    } on FirebaseException catch (e) {
      p(e.message ?? "");
      EasyLoading.showError(e.message ?? "");
    } catch (e) {
      p(e);
      EasyLoading.showError(e.toString());
    }
  }

  Future<void> _updatePhoto(
    _UpdatePhoto value,
    Emitter<AuthState> emit,
  ) async {
    await authRepo.updatePhoto(state.profileAssetEntity);
  }

  Future<void> _changeTabBarIndex(
    _ChangeTabBarIndex value,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(tabBarIndex: value.index));
  }
}
