part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  factory AuthEvent.signUp(
      {required AuthModel login, required AssetEntity images, required BuildContext context}) = _SignUp;

  factory AuthEvent.forgotPassword({
    required AuthModel email,
  }) = _ForgotPassword;

  factory AuthEvent.signIn({
    required SocialSignInType type,
    required BuildContext context,
    AuthModel? login,
  }) = _SocialSignIn;

  factory AuthEvent.newPassword({
    required AuthModel newPassword,
  }) = _NewPassword;

  factory AuthEvent.signOut() = _SignOut;

  factory AuthEvent.imagePick({
    required BuildContext context,
    required bool isSignUp
  }) = _ImagePick;

  factory AuthEvent.getUser() = _GetUser;

  factory AuthEvent.updateEmail(
      {required String email, required String password}) = _UpdateEmail;

  factory AuthEvent.updateName({required String name}) = _UpdateName;

  factory AuthEvent.updatePhoneNumber({required String phoneNumber, required BuildContext context}) = _UpdatePhoneNumber;

  factory AuthEvent.updatePassword(
      {required String oldPassword,
      required String newPassword}) = _UpdatePassword;

  factory AuthEvent.changeTabBarIndex({required int index}) = _ChangeTabBarIndex;

  factory AuthEvent.updatePhoto() = _UpdatePhoto;
}
