// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AuthModel login, AssetEntity images, BuildContext context)
        signUp,
    required TResult Function(AuthModel email) forgotPassword,
    required TResult Function(
            SocialSignInType type, BuildContext context, AuthModel? login)
        signIn,
    required TResult Function(AuthModel newPassword) newPassword,
    required TResult Function() signOut,
    required TResult Function(BuildContext context, bool isSignUp) imagePick,
    required TResult Function() getUser,
    required TResult Function(String email, String password) updateEmail,
    required TResult Function(String name) updateName,
    required TResult Function(String phoneNumber, BuildContext context)
        updatePhoneNumber,
    required TResult Function(String oldPassword, String newPassword)
        updatePassword,
    required TResult Function(int index) changeTabBarIndex,
    required TResult Function() updatePhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images, BuildContext context)?
        signUp,
    TResult Function(AuthModel email)? forgotPassword,
    TResult Function(
            SocialSignInType type, BuildContext context, AuthModel? login)?
        signIn,
    TResult Function(AuthModel newPassword)? newPassword,
    TResult Function()? signOut,
    TResult Function(BuildContext context, bool isSignUp)? imagePick,
    TResult Function()? getUser,
    TResult Function(String email, String password)? updateEmail,
    TResult Function(String name)? updateName,
    TResult Function(String phoneNumber, BuildContext context)?
        updatePhoneNumber,
    TResult Function(String oldPassword, String newPassword)? updatePassword,
    TResult Function(int index)? changeTabBarIndex,
    TResult Function()? updatePhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images, BuildContext context)?
        signUp,
    TResult Function(AuthModel email)? forgotPassword,
    TResult Function(
            SocialSignInType type, BuildContext context, AuthModel? login)?
        signIn,
    TResult Function(AuthModel newPassword)? newPassword,
    TResult Function()? signOut,
    TResult Function(BuildContext context, bool isSignUp)? imagePick,
    TResult Function()? getUser,
    TResult Function(String email, String password)? updateEmail,
    TResult Function(String name)? updateName,
    TResult Function(String phoneNumber, BuildContext context)?
        updatePhoneNumber,
    TResult Function(String oldPassword, String newPassword)? updatePassword,
    TResult Function(int index)? changeTabBarIndex,
    TResult Function()? updatePhoto,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_SocialSignIn value) signIn,
    required TResult Function(_NewPassword value) newPassword,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_ImagePick value) imagePick,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdatePhoneNumber value) updatePhoneNumber,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_ChangeTabBarIndex value) changeTabBarIndex,
    required TResult Function(_UpdatePhoto value) updatePhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_SocialSignIn value)? signIn,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdatePhoneNumber value)? updatePhoneNumber,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_ChangeTabBarIndex value)? changeTabBarIndex,
    TResult Function(_UpdatePhoto value)? updatePhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_SocialSignIn value)? signIn,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdatePhoneNumber value)? updatePhoneNumber,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_ChangeTabBarIndex value)? changeTabBarIndex,
    TResult Function(_UpdatePhoto value)? updatePhoto,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class _$$_SignUpCopyWith<$Res> {
  factory _$$_SignUpCopyWith(_$_SignUp value, $Res Function(_$_SignUp) then) =
      __$$_SignUpCopyWithImpl<$Res>;
  $Res call({AuthModel login, AssetEntity images, BuildContext context});
}

/// @nodoc
class __$$_SignUpCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_SignUpCopyWith<$Res> {
  __$$_SignUpCopyWithImpl(_$_SignUp _value, $Res Function(_$_SignUp) _then)
      : super(_value, (v) => _then(v as _$_SignUp));

  @override
  _$_SignUp get _value => super._value as _$_SignUp;

  @override
  $Res call({
    Object? login = freezed,
    Object? images = freezed,
    Object? context = freezed,
  }) {
    return _then(_$_SignUp(
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as AuthModel,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as AssetEntity,
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_SignUp implements _SignUp {
  _$_SignUp({required this.login, required this.images, required this.context});

  @override
  final AuthModel login;
  @override
  final AssetEntity images;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'AuthEvent.signUp(login: $login, images: $images, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUp &&
            const DeepCollectionEquality().equals(other.login, login) &&
            const DeepCollectionEquality().equals(other.images, images) &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(login),
      const DeepCollectionEquality().hash(images),
      const DeepCollectionEquality().hash(context));

  @JsonKey(ignore: true)
  @override
  _$$_SignUpCopyWith<_$_SignUp> get copyWith =>
      __$$_SignUpCopyWithImpl<_$_SignUp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AuthModel login, AssetEntity images, BuildContext context)
        signUp,
    required TResult Function(AuthModel email) forgotPassword,
    required TResult Function(
            SocialSignInType type, BuildContext context, AuthModel? login)
        signIn,
    required TResult Function(AuthModel newPassword) newPassword,
    required TResult Function() signOut,
    required TResult Function(BuildContext context, bool isSignUp) imagePick,
    required TResult Function() getUser,
    required TResult Function(String email, String password) updateEmail,
    required TResult Function(String name) updateName,
    required TResult Function(String phoneNumber, BuildContext context)
        updatePhoneNumber,
    required TResult Function(String oldPassword, String newPassword)
        updatePassword,
    required TResult Function(int index) changeTabBarIndex,
    required TResult Function() updatePhoto,
  }) {
    return signUp(login, images, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images, BuildContext context)?
        signUp,
    TResult Function(AuthModel email)? forgotPassword,
    TResult Function(
            SocialSignInType type, BuildContext context, AuthModel? login)?
        signIn,
    TResult Function(AuthModel newPassword)? newPassword,
    TResult Function()? signOut,
    TResult Function(BuildContext context, bool isSignUp)? imagePick,
    TResult Function()? getUser,
    TResult Function(String email, String password)? updateEmail,
    TResult Function(String name)? updateName,
    TResult Function(String phoneNumber, BuildContext context)?
        updatePhoneNumber,
    TResult Function(String oldPassword, String newPassword)? updatePassword,
    TResult Function(int index)? changeTabBarIndex,
    TResult Function()? updatePhoto,
  }) {
    return signUp?.call(login, images, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images, BuildContext context)?
        signUp,
    TResult Function(AuthModel email)? forgotPassword,
    TResult Function(
            SocialSignInType type, BuildContext context, AuthModel? login)?
        signIn,
    TResult Function(AuthModel newPassword)? newPassword,
    TResult Function()? signOut,
    TResult Function(BuildContext context, bool isSignUp)? imagePick,
    TResult Function()? getUser,
    TResult Function(String email, String password)? updateEmail,
    TResult Function(String name)? updateName,
    TResult Function(String phoneNumber, BuildContext context)?
        updatePhoneNumber,
    TResult Function(String oldPassword, String newPassword)? updatePassword,
    TResult Function(int index)? changeTabBarIndex,
    TResult Function()? updatePhoto,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(login, images, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_SocialSignIn value) signIn,
    required TResult Function(_NewPassword value) newPassword,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_ImagePick value) imagePick,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdatePhoneNumber value) updatePhoneNumber,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_ChangeTabBarIndex value) changeTabBarIndex,
    required TResult Function(_UpdatePhoto value) updatePhoto,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_SocialSignIn value)? signIn,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdatePhoneNumber value)? updatePhoneNumber,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_ChangeTabBarIndex value)? changeTabBarIndex,
    TResult Function(_UpdatePhoto value)? updatePhoto,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_SocialSignIn value)? signIn,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdatePhoneNumber value)? updatePhoneNumber,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_ChangeTabBarIndex value)? changeTabBarIndex,
    TResult Function(_UpdatePhoto value)? updatePhoto,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class _SignUp implements AuthEvent {
  factory _SignUp(
      {required final AuthModel login,
      required final AssetEntity images,
      required final BuildContext context}) = _$_SignUp;

  AuthModel get login;
  AssetEntity get images;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_SignUpCopyWith<_$_SignUp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ForgotPasswordCopyWith<$Res> {
  factory _$$_ForgotPasswordCopyWith(
          _$_ForgotPassword value, $Res Function(_$_ForgotPassword) then) =
      __$$_ForgotPasswordCopyWithImpl<$Res>;
  $Res call({AuthModel email});
}

/// @nodoc
class __$$_ForgotPasswordCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_ForgotPasswordCopyWith<$Res> {
  __$$_ForgotPasswordCopyWithImpl(
      _$_ForgotPassword _value, $Res Function(_$_ForgotPassword) _then)
      : super(_value, (v) => _then(v as _$_ForgotPassword));

  @override
  _$_ForgotPassword get _value => super._value as _$_ForgotPassword;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_$_ForgotPassword(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as AuthModel,
    ));
  }
}

/// @nodoc

class _$_ForgotPassword implements _ForgotPassword {
  _$_ForgotPassword({required this.email});

  @override
  final AuthModel email;

  @override
  String toString() {
    return 'AuthEvent.forgotPassword(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForgotPassword &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$$_ForgotPasswordCopyWith<_$_ForgotPassword> get copyWith =>
      __$$_ForgotPasswordCopyWithImpl<_$_ForgotPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AuthModel login, AssetEntity images, BuildContext context)
        signUp,
    required TResult Function(AuthModel email) forgotPassword,
    required TResult Function(
            SocialSignInType type, BuildContext context, AuthModel? login)
        signIn,
    required TResult Function(AuthModel newPassword) newPassword,
    required TResult Function() signOut,
    required TResult Function(BuildContext context, bool isSignUp) imagePick,
    required TResult Function() getUser,
    required TResult Function(String email, String password) updateEmail,
    required TResult Function(String name) updateName,
    required TResult Function(String phoneNumber, BuildContext context)
        updatePhoneNumber,
    required TResult Function(String oldPassword, String newPassword)
        updatePassword,
    required TResult Function(int index) changeTabBarIndex,
    required TResult Function() updatePhoto,
  }) {
    return forgotPassword(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images, BuildContext context)?
        signUp,
    TResult Function(AuthModel email)? forgotPassword,
    TResult Function(
            SocialSignInType type, BuildContext context, AuthModel? login)?
        signIn,
    TResult Function(AuthModel newPassword)? newPassword,
    TResult Function()? signOut,
    TResult Function(BuildContext context, bool isSignUp)? imagePick,
    TResult Function()? getUser,
    TResult Function(String email, String password)? updateEmail,
    TResult Function(String name)? updateName,
    TResult Function(String phoneNumber, BuildContext context)?
        updatePhoneNumber,
    TResult Function(String oldPassword, String newPassword)? updatePassword,
    TResult Function(int index)? changeTabBarIndex,
    TResult Function()? updatePhoto,
  }) {
    return forgotPassword?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images, BuildContext context)?
        signUp,
    TResult Function(AuthModel email)? forgotPassword,
    TResult Function(
            SocialSignInType type, BuildContext context, AuthModel? login)?
        signIn,
    TResult Function(AuthModel newPassword)? newPassword,
    TResult Function()? signOut,
    TResult Function(BuildContext context, bool isSignUp)? imagePick,
    TResult Function()? getUser,
    TResult Function(String email, String password)? updateEmail,
    TResult Function(String name)? updateName,
    TResult Function(String phoneNumber, BuildContext context)?
        updatePhoneNumber,
    TResult Function(String oldPassword, String newPassword)? updatePassword,
    TResult Function(int index)? changeTabBarIndex,
    TResult Function()? updatePhoto,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_SocialSignIn value) signIn,
    required TResult Function(_NewPassword value) newPassword,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_ImagePick value) imagePick,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdatePhoneNumber value) updatePhoneNumber,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_ChangeTabBarIndex value) changeTabBarIndex,
    required TResult Function(_UpdatePhoto value) updatePhoto,
  }) {
    return forgotPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_SocialSignIn value)? signIn,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdatePhoneNumber value)? updatePhoneNumber,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_ChangeTabBarIndex value)? changeTabBarIndex,
    TResult Function(_UpdatePhoto value)? updatePhoto,
  }) {
    return forgotPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_SocialSignIn value)? signIn,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdatePhoneNumber value)? updatePhoneNumber,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_ChangeTabBarIndex value)? changeTabBarIndex,
    TResult Function(_UpdatePhoto value)? updatePhoto,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword(this);
    }
    return orElse();
  }
}

abstract class _ForgotPassword implements AuthEvent {
  factory _ForgotPassword({required final AuthModel email}) = _$_ForgotPassword;

  AuthModel get email;
  @JsonKey(ignore: true)
  _$$_ForgotPasswordCopyWith<_$_ForgotPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SocialSignInCopyWith<$Res> {
  factory _$$_SocialSignInCopyWith(
          _$_SocialSignIn value, $Res Function(_$_SocialSignIn) then) =
      __$$_SocialSignInCopyWithImpl<$Res>;
  $Res call({SocialSignInType type, BuildContext context, AuthModel? login});
}

/// @nodoc
class __$$_SocialSignInCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_SocialSignInCopyWith<$Res> {
  __$$_SocialSignInCopyWithImpl(
      _$_SocialSignIn _value, $Res Function(_$_SocialSignIn) _then)
      : super(_value, (v) => _then(v as _$_SocialSignIn));

  @override
  _$_SocialSignIn get _value => super._value as _$_SocialSignIn;

  @override
  $Res call({
    Object? type = freezed,
    Object? context = freezed,
    Object? login = freezed,
  }) {
    return _then(_$_SocialSignIn(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SocialSignInType,
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as AuthModel?,
    ));
  }
}

/// @nodoc

class _$_SocialSignIn implements _SocialSignIn {
  _$_SocialSignIn({required this.type, required this.context, this.login});

  @override
  final SocialSignInType type;
  @override
  final BuildContext context;
  @override
  final AuthModel? login;

  @override
  String toString() {
    return 'AuthEvent.signIn(type: $type, context: $context, login: $login)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SocialSignIn &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.context, context) &&
            const DeepCollectionEquality().equals(other.login, login));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(context),
      const DeepCollectionEquality().hash(login));

  @JsonKey(ignore: true)
  @override
  _$$_SocialSignInCopyWith<_$_SocialSignIn> get copyWith =>
      __$$_SocialSignInCopyWithImpl<_$_SocialSignIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AuthModel login, AssetEntity images, BuildContext context)
        signUp,
    required TResult Function(AuthModel email) forgotPassword,
    required TResult Function(
            SocialSignInType type, BuildContext context, AuthModel? login)
        signIn,
    required TResult Function(AuthModel newPassword) newPassword,
    required TResult Function() signOut,
    required TResult Function(BuildContext context, bool isSignUp) imagePick,
    required TResult Function() getUser,
    required TResult Function(String email, String password) updateEmail,
    required TResult Function(String name) updateName,
    required TResult Function(String phoneNumber, BuildContext context)
        updatePhoneNumber,
    required TResult Function(String oldPassword, String newPassword)
        updatePassword,
    required TResult Function(int index) changeTabBarIndex,
    required TResult Function() updatePhoto,
  }) {
    return signIn(type, context, login);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images, BuildContext context)?
        signUp,
    TResult Function(AuthModel email)? forgotPassword,
    TResult Function(
            SocialSignInType type, BuildContext context, AuthModel? login)?
        signIn,
    TResult Function(AuthModel newPassword)? newPassword,
    TResult Function()? signOut,
    TResult Function(BuildContext context, bool isSignUp)? imagePick,
    TResult Function()? getUser,
    TResult Function(String email, String password)? updateEmail,
    TResult Function(String name)? updateName,
    TResult Function(String phoneNumber, BuildContext context)?
        updatePhoneNumber,
    TResult Function(String oldPassword, String newPassword)? updatePassword,
    TResult Function(int index)? changeTabBarIndex,
    TResult Function()? updatePhoto,
  }) {
    return signIn?.call(type, context, login);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images, BuildContext context)?
        signUp,
    TResult Function(AuthModel email)? forgotPassword,
    TResult Function(
            SocialSignInType type, BuildContext context, AuthModel? login)?
        signIn,
    TResult Function(AuthModel newPassword)? newPassword,
    TResult Function()? signOut,
    TResult Function(BuildContext context, bool isSignUp)? imagePick,
    TResult Function()? getUser,
    TResult Function(String email, String password)? updateEmail,
    TResult Function(String name)? updateName,
    TResult Function(String phoneNumber, BuildContext context)?
        updatePhoneNumber,
    TResult Function(String oldPassword, String newPassword)? updatePassword,
    TResult Function(int index)? changeTabBarIndex,
    TResult Function()? updatePhoto,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(type, context, login);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_SocialSignIn value) signIn,
    required TResult Function(_NewPassword value) newPassword,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_ImagePick value) imagePick,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdatePhoneNumber value) updatePhoneNumber,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_ChangeTabBarIndex value) changeTabBarIndex,
    required TResult Function(_UpdatePhoto value) updatePhoto,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_SocialSignIn value)? signIn,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdatePhoneNumber value)? updatePhoneNumber,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_ChangeTabBarIndex value)? changeTabBarIndex,
    TResult Function(_UpdatePhoto value)? updatePhoto,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_SocialSignIn value)? signIn,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdatePhoneNumber value)? updatePhoneNumber,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_ChangeTabBarIndex value)? changeTabBarIndex,
    TResult Function(_UpdatePhoto value)? updatePhoto,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class _SocialSignIn implements AuthEvent {
  factory _SocialSignIn(
      {required final SocialSignInType type,
      required final BuildContext context,
      final AuthModel? login}) = _$_SocialSignIn;

  SocialSignInType get type;
  BuildContext get context;
  AuthModel? get login;
  @JsonKey(ignore: true)
  _$$_SocialSignInCopyWith<_$_SocialSignIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NewPasswordCopyWith<$Res> {
  factory _$$_NewPasswordCopyWith(
          _$_NewPassword value, $Res Function(_$_NewPassword) then) =
      __$$_NewPasswordCopyWithImpl<$Res>;
  $Res call({AuthModel newPassword});
}

/// @nodoc
class __$$_NewPasswordCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_NewPasswordCopyWith<$Res> {
  __$$_NewPasswordCopyWithImpl(
      _$_NewPassword _value, $Res Function(_$_NewPassword) _then)
      : super(_value, (v) => _then(v as _$_NewPassword));

  @override
  _$_NewPassword get _value => super._value as _$_NewPassword;

  @override
  $Res call({
    Object? newPassword = freezed,
  }) {
    return _then(_$_NewPassword(
      newPassword: newPassword == freezed
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as AuthModel,
    ));
  }
}

/// @nodoc

class _$_NewPassword implements _NewPassword {
  _$_NewPassword({required this.newPassword});

  @override
  final AuthModel newPassword;

  @override
  String toString() {
    return 'AuthEvent.newPassword(newPassword: $newPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewPassword &&
            const DeepCollectionEquality()
                .equals(other.newPassword, newPassword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(newPassword));

  @JsonKey(ignore: true)
  @override
  _$$_NewPasswordCopyWith<_$_NewPassword> get copyWith =>
      __$$_NewPasswordCopyWithImpl<_$_NewPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AuthModel login, AssetEntity images, BuildContext context)
        signUp,
    required TResult Function(AuthModel email) forgotPassword,
    required TResult Function(
            SocialSignInType type, BuildContext context, AuthModel? login)
        signIn,
    required TResult Function(AuthModel newPassword) newPassword,
    required TResult Function() signOut,
    required TResult Function(BuildContext context, bool isSignUp) imagePick,
    required TResult Function() getUser,
    required TResult Function(String email, String password) updateEmail,
    required TResult Function(String name) updateName,
    required TResult Function(String phoneNumber, BuildContext context)
        updatePhoneNumber,
    required TResult Function(String oldPassword, String newPassword)
        updatePassword,
    required TResult Function(int index) changeTabBarIndex,
    required TResult Function() updatePhoto,
  }) {
    return newPassword(this.newPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images, BuildContext context)?
        signUp,
    TResult Function(AuthModel email)? forgotPassword,
    TResult Function(
            SocialSignInType type, BuildContext context, AuthModel? login)?
        signIn,
    TResult Function(AuthModel newPassword)? newPassword,
    TResult Function()? signOut,
    TResult Function(BuildContext context, bool isSignUp)? imagePick,
    TResult Function()? getUser,
    TResult Function(String email, String password)? updateEmail,
    TResult Function(String name)? updateName,
    TResult Function(String phoneNumber, BuildContext context)?
        updatePhoneNumber,
    TResult Function(String oldPassword, String newPassword)? updatePassword,
    TResult Function(int index)? changeTabBarIndex,
    TResult Function()? updatePhoto,
  }) {
    return newPassword?.call(this.newPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images, BuildContext context)?
        signUp,
    TResult Function(AuthModel email)? forgotPassword,
    TResult Function(
            SocialSignInType type, BuildContext context, AuthModel? login)?
        signIn,
    TResult Function(AuthModel newPassword)? newPassword,
    TResult Function()? signOut,
    TResult Function(BuildContext context, bool isSignUp)? imagePick,
    TResult Function()? getUser,
    TResult Function(String email, String password)? updateEmail,
    TResult Function(String name)? updateName,
    TResult Function(String phoneNumber, BuildContext context)?
        updatePhoneNumber,
    TResult Function(String oldPassword, String newPassword)? updatePassword,
    TResult Function(int index)? changeTabBarIndex,
    TResult Function()? updatePhoto,
    required TResult orElse(),
  }) {
    if (newPassword != null) {
      return newPassword(this.newPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_SocialSignIn value) signIn,
    required TResult Function(_NewPassword value) newPassword,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_ImagePick value) imagePick,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdatePhoneNumber value) updatePhoneNumber,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_ChangeTabBarIndex value) changeTabBarIndex,
    required TResult Function(_UpdatePhoto value) updatePhoto,
  }) {
    return newPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_SocialSignIn value)? signIn,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdatePhoneNumber value)? updatePhoneNumber,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_ChangeTabBarIndex value)? changeTabBarIndex,
    TResult Function(_UpdatePhoto value)? updatePhoto,
  }) {
    return newPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_SocialSignIn value)? signIn,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdatePhoneNumber value)? updatePhoneNumber,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_ChangeTabBarIndex value)? changeTabBarIndex,
    TResult Function(_UpdatePhoto value)? updatePhoto,
    required TResult orElse(),
  }) {
    if (newPassword != null) {
      return newPassword(this);
    }
    return orElse();
  }
}

abstract class _NewPassword implements AuthEvent {
  factory _NewPassword({required final AuthModel newPassword}) = _$_NewPassword;

  AuthModel get newPassword;
  @JsonKey(ignore: true)
  _$$_NewPasswordCopyWith<_$_NewPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignOutCopyWith<$Res> {
  factory _$$_SignOutCopyWith(
          _$_SignOut value, $Res Function(_$_SignOut) then) =
      __$$_SignOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignOutCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_SignOutCopyWith<$Res> {
  __$$_SignOutCopyWithImpl(_$_SignOut _value, $Res Function(_$_SignOut) _then)
      : super(_value, (v) => _then(v as _$_SignOut));

  @override
  _$_SignOut get _value => super._value as _$_SignOut;
}

/// @nodoc

class _$_SignOut implements _SignOut {
  _$_SignOut();

  @override
  String toString() {
    return 'AuthEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AuthModel login, AssetEntity images, BuildContext context)
        signUp,
    required TResult Function(AuthModel email) forgotPassword,
    required TResult Function(
            SocialSignInType type, BuildContext context, AuthModel? login)
        signIn,
    required TResult Function(AuthModel newPassword) newPassword,
    required TResult Function() signOut,
    required TResult Function(BuildContext context, bool isSignUp) imagePick,
    required TResult Function() getUser,
    required TResult Function(String email, String password) updateEmail,
    required TResult Function(String name) updateName,
    required TResult Function(String phoneNumber, BuildContext context)
        updatePhoneNumber,
    required TResult Function(String oldPassword, String newPassword)
        updatePassword,
    required TResult Function(int index) changeTabBarIndex,
    required TResult Function() updatePhoto,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images, BuildContext context)?
        signUp,
    TResult Function(AuthModel email)? forgotPassword,
    TResult Function(
            SocialSignInType type, BuildContext context, AuthModel? login)?
        signIn,
    TResult Function(AuthModel newPassword)? newPassword,
    TResult Function()? signOut,
    TResult Function(BuildContext context, bool isSignUp)? imagePick,
    TResult Function()? getUser,
    TResult Function(String email, String password)? updateEmail,
    TResult Function(String name)? updateName,
    TResult Function(String phoneNumber, BuildContext context)?
        updatePhoneNumber,
    TResult Function(String oldPassword, String newPassword)? updatePassword,
    TResult Function(int index)? changeTabBarIndex,
    TResult Function()? updatePhoto,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images, BuildContext context)?
        signUp,
    TResult Function(AuthModel email)? forgotPassword,
    TResult Function(
            SocialSignInType type, BuildContext context, AuthModel? login)?
        signIn,
    TResult Function(AuthModel newPassword)? newPassword,
    TResult Function()? signOut,
    TResult Function(BuildContext context, bool isSignUp)? imagePick,
    TResult Function()? getUser,
    TResult Function(String email, String password)? updateEmail,
    TResult Function(String name)? updateName,
    TResult Function(String phoneNumber, BuildContext context)?
        updatePhoneNumber,
    TResult Function(String oldPassword, String newPassword)? updatePassword,
    TResult Function(int index)? changeTabBarIndex,
    TResult Function()? updatePhoto,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_SocialSignIn value) signIn,
    required TResult Function(_NewPassword value) newPassword,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_ImagePick value) imagePick,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdatePhoneNumber value) updatePhoneNumber,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_ChangeTabBarIndex value) changeTabBarIndex,
    required TResult Function(_UpdatePhoto value) updatePhoto,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_SocialSignIn value)? signIn,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdatePhoneNumber value)? updatePhoneNumber,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_ChangeTabBarIndex value)? changeTabBarIndex,
    TResult Function(_UpdatePhoto value)? updatePhoto,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_SocialSignIn value)? signIn,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdatePhoneNumber value)? updatePhoneNumber,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_ChangeTabBarIndex value)? changeTabBarIndex,
    TResult Function(_UpdatePhoto value)? updatePhoto,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOut implements AuthEvent {
  factory _SignOut() = _$_SignOut;
}

/// @nodoc
abstract class _$$_ImagePickCopyWith<$Res> {
  factory _$$_ImagePickCopyWith(
          _$_ImagePick value, $Res Function(_$_ImagePick) then) =
      __$$_ImagePickCopyWithImpl<$Res>;
  $Res call({BuildContext context, bool isSignUp});
}

/// @nodoc
class __$$_ImagePickCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_ImagePickCopyWith<$Res> {
  __$$_ImagePickCopyWithImpl(
      _$_ImagePick _value, $Res Function(_$_ImagePick) _then)
      : super(_value, (v) => _then(v as _$_ImagePick));

  @override
  _$_ImagePick get _value => super._value as _$_ImagePick;

  @override
  $Res call({
    Object? context = freezed,
    Object? isSignUp = freezed,
  }) {
    return _then(_$_ImagePick(
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      isSignUp: isSignUp == freezed
          ? _value.isSignUp
          : isSignUp // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ImagePick implements _ImagePick {
  _$_ImagePick({required this.context, required this.isSignUp});

  @override
  final BuildContext context;
  @override
  final bool isSignUp;

  @override
  String toString() {
    return 'AuthEvent.imagePick(context: $context, isSignUp: $isSignUp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImagePick &&
            const DeepCollectionEquality().equals(other.context, context) &&
            const DeepCollectionEquality().equals(other.isSignUp, isSignUp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(context),
      const DeepCollectionEquality().hash(isSignUp));

  @JsonKey(ignore: true)
  @override
  _$$_ImagePickCopyWith<_$_ImagePick> get copyWith =>
      __$$_ImagePickCopyWithImpl<_$_ImagePick>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AuthModel login, AssetEntity images, BuildContext context)
        signUp,
    required TResult Function(AuthModel email) forgotPassword,
    required TResult Function(
            SocialSignInType type, BuildContext context, AuthModel? login)
        signIn,
    required TResult Function(AuthModel newPassword) newPassword,
    required TResult Function() signOut,
    required TResult Function(BuildContext context, bool isSignUp) imagePick,
    required TResult Function() getUser,
    required TResult Function(String email, String password) updateEmail,
    required TResult Function(String name) updateName,
    required TResult Function(String phoneNumber, BuildContext context)
        updatePhoneNumber,
    required TResult Function(String oldPassword, String newPassword)
        updatePassword,
    required TResult Function(int index) changeTabBarIndex,
    required TResult Function() updatePhoto,
  }) {
    return imagePick(context, isSignUp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images, BuildContext context)?
        signUp,
    TResult Function(AuthModel email)? forgotPassword,
    TResult Function(
            SocialSignInType type, BuildContext context, AuthModel? login)?
        signIn,
    TResult Function(AuthModel newPassword)? newPassword,
    TResult Function()? signOut,
    TResult Function(BuildContext context, bool isSignUp)? imagePick,
    TResult Function()? getUser,
    TResult Function(String email, String password)? updateEmail,
    TResult Function(String name)? updateName,
    TResult Function(String phoneNumber, BuildContext context)?
        updatePhoneNumber,
    TResult Function(String oldPassword, String newPassword)? updatePassword,
    TResult Function(int index)? changeTabBarIndex,
    TResult Function()? updatePhoto,
  }) {
    return imagePick?.call(context, isSignUp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images, BuildContext context)?
        signUp,
    TResult Function(AuthModel email)? forgotPassword,
    TResult Function(
            SocialSignInType type, BuildContext context, AuthModel? login)?
        signIn,
    TResult Function(AuthModel newPassword)? newPassword,
    TResult Function()? signOut,
    TResult Function(BuildContext context, bool isSignUp)? imagePick,
    TResult Function()? getUser,
    TResult Function(String email, String password)? updateEmail,
    TResult Function(String name)? updateName,
    TResult Function(String phoneNumber, BuildContext context)?
        updatePhoneNumber,
    TResult Function(String oldPassword, String newPassword)? updatePassword,
    TResult Function(int index)? changeTabBarIndex,
    TResult Function()? updatePhoto,
    required TResult orElse(),
  }) {
    if (imagePick != null) {
      return imagePick(context, isSignUp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_SocialSignIn value) signIn,
    required TResult Function(_NewPassword value) newPassword,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_ImagePick value) imagePick,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdatePhoneNumber value) updatePhoneNumber,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_ChangeTabBarIndex value) changeTabBarIndex,
    required TResult Function(_UpdatePhoto value) updatePhoto,
  }) {
    return imagePick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_SocialSignIn value)? signIn,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdatePhoneNumber value)? updatePhoneNumber,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_ChangeTabBarIndex value)? changeTabBarIndex,
    TResult Function(_UpdatePhoto value)? updatePhoto,
  }) {
    return imagePick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_SocialSignIn value)? signIn,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdatePhoneNumber value)? updatePhoneNumber,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_ChangeTabBarIndex value)? changeTabBarIndex,
    TResult Function(_UpdatePhoto value)? updatePhoto,
    required TResult orElse(),
  }) {
    if (imagePick != null) {
      return imagePick(this);
    }
    return orElse();
  }
}

abstract class _ImagePick implements AuthEvent {
  factory _ImagePick(
      {required final BuildContext context,
      required final bool isSignUp}) = _$_ImagePick;

  BuildContext get context;
  bool get isSignUp;
  @JsonKey(ignore: true)
  _$$_ImagePickCopyWith<_$_ImagePick> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetUserCopyWith<$Res> {
  factory _$$_GetUserCopyWith(
          _$_GetUser value, $Res Function(_$_GetUser) then) =
      __$$_GetUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetUserCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_GetUserCopyWith<$Res> {
  __$$_GetUserCopyWithImpl(_$_GetUser _value, $Res Function(_$_GetUser) _then)
      : super(_value, (v) => _then(v as _$_GetUser));

  @override
  _$_GetUser get _value => super._value as _$_GetUser;
}

/// @nodoc

class _$_GetUser implements _GetUser {
  _$_GetUser();

  @override
  String toString() {
    return 'AuthEvent.getUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AuthModel login, AssetEntity images, BuildContext context)
        signUp,
    required TResult Function(AuthModel email) forgotPassword,
    required TResult Function(
            SocialSignInType type, BuildContext context, AuthModel? login)
        signIn,
    required TResult Function(AuthModel newPassword) newPassword,
    required TResult Function() signOut,
    required TResult Function(BuildContext context, bool isSignUp) imagePick,
    required TResult Function() getUser,
    required TResult Function(String email, String password) updateEmail,
    required TResult Function(String name) updateName,
    required TResult Function(String phoneNumber, BuildContext context)
        updatePhoneNumber,
    required TResult Function(String oldPassword, String newPassword)
        updatePassword,
    required TResult Function(int index) changeTabBarIndex,
    required TResult Function() updatePhoto,
  }) {
    return getUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images, BuildContext context)?
        signUp,
    TResult Function(AuthModel email)? forgotPassword,
    TResult Function(
            SocialSignInType type, BuildContext context, AuthModel? login)?
        signIn,
    TResult Function(AuthModel newPassword)? newPassword,
    TResult Function()? signOut,
    TResult Function(BuildContext context, bool isSignUp)? imagePick,
    TResult Function()? getUser,
    TResult Function(String email, String password)? updateEmail,
    TResult Function(String name)? updateName,
    TResult Function(String phoneNumber, BuildContext context)?
        updatePhoneNumber,
    TResult Function(String oldPassword, String newPassword)? updatePassword,
    TResult Function(int index)? changeTabBarIndex,
    TResult Function()? updatePhoto,
  }) {
    return getUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images, BuildContext context)?
        signUp,
    TResult Function(AuthModel email)? forgotPassword,
    TResult Function(
            SocialSignInType type, BuildContext context, AuthModel? login)?
        signIn,
    TResult Function(AuthModel newPassword)? newPassword,
    TResult Function()? signOut,
    TResult Function(BuildContext context, bool isSignUp)? imagePick,
    TResult Function()? getUser,
    TResult Function(String email, String password)? updateEmail,
    TResult Function(String name)? updateName,
    TResult Function(String phoneNumber, BuildContext context)?
        updatePhoneNumber,
    TResult Function(String oldPassword, String newPassword)? updatePassword,
    TResult Function(int index)? changeTabBarIndex,
    TResult Function()? updatePhoto,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_SocialSignIn value) signIn,
    required TResult Function(_NewPassword value) newPassword,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_ImagePick value) imagePick,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdatePhoneNumber value) updatePhoneNumber,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_ChangeTabBarIndex value) changeTabBarIndex,
    required TResult Function(_UpdatePhoto value) updatePhoto,
  }) {
    return getUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_SocialSignIn value)? signIn,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdatePhoneNumber value)? updatePhoneNumber,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_ChangeTabBarIndex value)? changeTabBarIndex,
    TResult Function(_UpdatePhoto value)? updatePhoto,
  }) {
    return getUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_SocialSignIn value)? signIn,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdatePhoneNumber value)? updatePhoneNumber,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_ChangeTabBarIndex value)? changeTabBarIndex,
    TResult Function(_UpdatePhoto value)? updatePhoto,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser(this);
    }
    return orElse();
  }
}

abstract class _GetUser implements AuthEvent {
  factory _GetUser() = _$_GetUser;
}

/// @nodoc
abstract class _$$_UpdateEmailCopyWith<$Res> {
  factory _$$_UpdateEmailCopyWith(
          _$_UpdateEmail value, $Res Function(_$_UpdateEmail) then) =
      __$$_UpdateEmailCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class __$$_UpdateEmailCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_UpdateEmailCopyWith<$Res> {
  __$$_UpdateEmailCopyWithImpl(
      _$_UpdateEmail _value, $Res Function(_$_UpdateEmail) _then)
      : super(_value, (v) => _then(v as _$_UpdateEmail));

  @override
  _$_UpdateEmail get _value => super._value as _$_UpdateEmail;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_UpdateEmail(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateEmail implements _UpdateEmail {
  _$_UpdateEmail({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.updateEmail(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateEmail &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateEmailCopyWith<_$_UpdateEmail> get copyWith =>
      __$$_UpdateEmailCopyWithImpl<_$_UpdateEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AuthModel login, AssetEntity images, BuildContext context)
        signUp,
    required TResult Function(AuthModel email) forgotPassword,
    required TResult Function(
            SocialSignInType type, BuildContext context, AuthModel? login)
        signIn,
    required TResult Function(AuthModel newPassword) newPassword,
    required TResult Function() signOut,
    required TResult Function(BuildContext context, bool isSignUp) imagePick,
    required TResult Function() getUser,
    required TResult Function(String email, String password) updateEmail,
    required TResult Function(String name) updateName,
    required TResult Function(String phoneNumber, BuildContext context)
        updatePhoneNumber,
    required TResult Function(String oldPassword, String newPassword)
        updatePassword,
    required TResult Function(int index) changeTabBarIndex,
    required TResult Function() updatePhoto,
  }) {
    return updateEmail(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images, BuildContext context)?
        signUp,
    TResult Function(AuthModel email)? forgotPassword,
    TResult Function(
            SocialSignInType type, BuildContext context, AuthModel? login)?
        signIn,
    TResult Function(AuthModel newPassword)? newPassword,
    TResult Function()? signOut,
    TResult Function(BuildContext context, bool isSignUp)? imagePick,
    TResult Function()? getUser,
    TResult Function(String email, String password)? updateEmail,
    TResult Function(String name)? updateName,
    TResult Function(String phoneNumber, BuildContext context)?
        updatePhoneNumber,
    TResult Function(String oldPassword, String newPassword)? updatePassword,
    TResult Function(int index)? changeTabBarIndex,
    TResult Function()? updatePhoto,
  }) {
    return updateEmail?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images, BuildContext context)?
        signUp,
    TResult Function(AuthModel email)? forgotPassword,
    TResult Function(
            SocialSignInType type, BuildContext context, AuthModel? login)?
        signIn,
    TResult Function(AuthModel newPassword)? newPassword,
    TResult Function()? signOut,
    TResult Function(BuildContext context, bool isSignUp)? imagePick,
    TResult Function()? getUser,
    TResult Function(String email, String password)? updateEmail,
    TResult Function(String name)? updateName,
    TResult Function(String phoneNumber, BuildContext context)?
        updatePhoneNumber,
    TResult Function(String oldPassword, String newPassword)? updatePassword,
    TResult Function(int index)? changeTabBarIndex,
    TResult Function()? updatePhoto,
    required TResult orElse(),
  }) {
    if (updateEmail != null) {
      return updateEmail(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_SocialSignIn value) signIn,
    required TResult Function(_NewPassword value) newPassword,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_ImagePick value) imagePick,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdatePhoneNumber value) updatePhoneNumber,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_ChangeTabBarIndex value) changeTabBarIndex,
    required TResult Function(_UpdatePhoto value) updatePhoto,
  }) {
    return updateEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_SocialSignIn value)? signIn,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdatePhoneNumber value)? updatePhoneNumber,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_ChangeTabBarIndex value)? changeTabBarIndex,
    TResult Function(_UpdatePhoto value)? updatePhoto,
  }) {
    return updateEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_SocialSignIn value)? signIn,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdatePhoneNumber value)? updatePhoneNumber,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_ChangeTabBarIndex value)? changeTabBarIndex,
    TResult Function(_UpdatePhoto value)? updatePhoto,
    required TResult orElse(),
  }) {
    if (updateEmail != null) {
      return updateEmail(this);
    }
    return orElse();
  }
}

abstract class _UpdateEmail implements AuthEvent {
  factory _UpdateEmail(
      {required final String email,
      required final String password}) = _$_UpdateEmail;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$_UpdateEmailCopyWith<_$_UpdateEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateNameCopyWith<$Res> {
  factory _$$_UpdateNameCopyWith(
          _$_UpdateName value, $Res Function(_$_UpdateName) then) =
      __$$_UpdateNameCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class __$$_UpdateNameCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_UpdateNameCopyWith<$Res> {
  __$$_UpdateNameCopyWithImpl(
      _$_UpdateName _value, $Res Function(_$_UpdateName) _then)
      : super(_value, (v) => _then(v as _$_UpdateName));

  @override
  _$_UpdateName get _value => super._value as _$_UpdateName;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$_UpdateName(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateName implements _UpdateName {
  _$_UpdateName({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'AuthEvent.updateName(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateName &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateNameCopyWith<_$_UpdateName> get copyWith =>
      __$$_UpdateNameCopyWithImpl<_$_UpdateName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AuthModel login, AssetEntity images, BuildContext context)
        signUp,
    required TResult Function(AuthModel email) forgotPassword,
    required TResult Function(
            SocialSignInType type, BuildContext context, AuthModel? login)
        signIn,
    required TResult Function(AuthModel newPassword) newPassword,
    required TResult Function() signOut,
    required TResult Function(BuildContext context, bool isSignUp) imagePick,
    required TResult Function() getUser,
    required TResult Function(String email, String password) updateEmail,
    required TResult Function(String name) updateName,
    required TResult Function(String phoneNumber, BuildContext context)
        updatePhoneNumber,
    required TResult Function(String oldPassword, String newPassword)
        updatePassword,
    required TResult Function(int index) changeTabBarIndex,
    required TResult Function() updatePhoto,
  }) {
    return updateName(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images, BuildContext context)?
        signUp,
    TResult Function(AuthModel email)? forgotPassword,
    TResult Function(
            SocialSignInType type, BuildContext context, AuthModel? login)?
        signIn,
    TResult Function(AuthModel newPassword)? newPassword,
    TResult Function()? signOut,
    TResult Function(BuildContext context, bool isSignUp)? imagePick,
    TResult Function()? getUser,
    TResult Function(String email, String password)? updateEmail,
    TResult Function(String name)? updateName,
    TResult Function(String phoneNumber, BuildContext context)?
        updatePhoneNumber,
    TResult Function(String oldPassword, String newPassword)? updatePassword,
    TResult Function(int index)? changeTabBarIndex,
    TResult Function()? updatePhoto,
  }) {
    return updateName?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images, BuildContext context)?
        signUp,
    TResult Function(AuthModel email)? forgotPassword,
    TResult Function(
            SocialSignInType type, BuildContext context, AuthModel? login)?
        signIn,
    TResult Function(AuthModel newPassword)? newPassword,
    TResult Function()? signOut,
    TResult Function(BuildContext context, bool isSignUp)? imagePick,
    TResult Function()? getUser,
    TResult Function(String email, String password)? updateEmail,
    TResult Function(String name)? updateName,
    TResult Function(String phoneNumber, BuildContext context)?
        updatePhoneNumber,
    TResult Function(String oldPassword, String newPassword)? updatePassword,
    TResult Function(int index)? changeTabBarIndex,
    TResult Function()? updatePhoto,
    required TResult orElse(),
  }) {
    if (updateName != null) {
      return updateName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_SocialSignIn value) signIn,
    required TResult Function(_NewPassword value) newPassword,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_ImagePick value) imagePick,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdatePhoneNumber value) updatePhoneNumber,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_ChangeTabBarIndex value) changeTabBarIndex,
    required TResult Function(_UpdatePhoto value) updatePhoto,
  }) {
    return updateName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_SocialSignIn value)? signIn,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdatePhoneNumber value)? updatePhoneNumber,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_ChangeTabBarIndex value)? changeTabBarIndex,
    TResult Function(_UpdatePhoto value)? updatePhoto,
  }) {
    return updateName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_SocialSignIn value)? signIn,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdatePhoneNumber value)? updatePhoneNumber,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_ChangeTabBarIndex value)? changeTabBarIndex,
    TResult Function(_UpdatePhoto value)? updatePhoto,
    required TResult orElse(),
  }) {
    if (updateName != null) {
      return updateName(this);
    }
    return orElse();
  }
}

abstract class _UpdateName implements AuthEvent {
  factory _UpdateName({required final String name}) = _$_UpdateName;

  String get name;
  @JsonKey(ignore: true)
  _$$_UpdateNameCopyWith<_$_UpdateName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdatePhoneNumberCopyWith<$Res> {
  factory _$$_UpdatePhoneNumberCopyWith(_$_UpdatePhoneNumber value,
          $Res Function(_$_UpdatePhoneNumber) then) =
      __$$_UpdatePhoneNumberCopyWithImpl<$Res>;
  $Res call({String phoneNumber, BuildContext context});
}

/// @nodoc
class __$$_UpdatePhoneNumberCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_UpdatePhoneNumberCopyWith<$Res> {
  __$$_UpdatePhoneNumberCopyWithImpl(
      _$_UpdatePhoneNumber _value, $Res Function(_$_UpdatePhoneNumber) _then)
      : super(_value, (v) => _then(v as _$_UpdatePhoneNumber));

  @override
  _$_UpdatePhoneNumber get _value => super._value as _$_UpdatePhoneNumber;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? context = freezed,
  }) {
    return _then(_$_UpdatePhoneNumber(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_UpdatePhoneNumber implements _UpdatePhoneNumber {
  _$_UpdatePhoneNumber({required this.phoneNumber, required this.context});

  @override
  final String phoneNumber;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'AuthEvent.updatePhoneNumber(phoneNumber: $phoneNumber, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdatePhoneNumber &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(context));

  @JsonKey(ignore: true)
  @override
  _$$_UpdatePhoneNumberCopyWith<_$_UpdatePhoneNumber> get copyWith =>
      __$$_UpdatePhoneNumberCopyWithImpl<_$_UpdatePhoneNumber>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AuthModel login, AssetEntity images, BuildContext context)
        signUp,
    required TResult Function(AuthModel email) forgotPassword,
    required TResult Function(
            SocialSignInType type, BuildContext context, AuthModel? login)
        signIn,
    required TResult Function(AuthModel newPassword) newPassword,
    required TResult Function() signOut,
    required TResult Function(BuildContext context, bool isSignUp) imagePick,
    required TResult Function() getUser,
    required TResult Function(String email, String password) updateEmail,
    required TResult Function(String name) updateName,
    required TResult Function(String phoneNumber, BuildContext context)
        updatePhoneNumber,
    required TResult Function(String oldPassword, String newPassword)
        updatePassword,
    required TResult Function(int index) changeTabBarIndex,
    required TResult Function() updatePhoto,
  }) {
    return updatePhoneNumber(phoneNumber, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images, BuildContext context)?
        signUp,
    TResult Function(AuthModel email)? forgotPassword,
    TResult Function(
            SocialSignInType type, BuildContext context, AuthModel? login)?
        signIn,
    TResult Function(AuthModel newPassword)? newPassword,
    TResult Function()? signOut,
    TResult Function(BuildContext context, bool isSignUp)? imagePick,
    TResult Function()? getUser,
    TResult Function(String email, String password)? updateEmail,
    TResult Function(String name)? updateName,
    TResult Function(String phoneNumber, BuildContext context)?
        updatePhoneNumber,
    TResult Function(String oldPassword, String newPassword)? updatePassword,
    TResult Function(int index)? changeTabBarIndex,
    TResult Function()? updatePhoto,
  }) {
    return updatePhoneNumber?.call(phoneNumber, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images, BuildContext context)?
        signUp,
    TResult Function(AuthModel email)? forgotPassword,
    TResult Function(
            SocialSignInType type, BuildContext context, AuthModel? login)?
        signIn,
    TResult Function(AuthModel newPassword)? newPassword,
    TResult Function()? signOut,
    TResult Function(BuildContext context, bool isSignUp)? imagePick,
    TResult Function()? getUser,
    TResult Function(String email, String password)? updateEmail,
    TResult Function(String name)? updateName,
    TResult Function(String phoneNumber, BuildContext context)?
        updatePhoneNumber,
    TResult Function(String oldPassword, String newPassword)? updatePassword,
    TResult Function(int index)? changeTabBarIndex,
    TResult Function()? updatePhoto,
    required TResult orElse(),
  }) {
    if (updatePhoneNumber != null) {
      return updatePhoneNumber(phoneNumber, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_SocialSignIn value) signIn,
    required TResult Function(_NewPassword value) newPassword,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_ImagePick value) imagePick,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdatePhoneNumber value) updatePhoneNumber,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_ChangeTabBarIndex value) changeTabBarIndex,
    required TResult Function(_UpdatePhoto value) updatePhoto,
  }) {
    return updatePhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_SocialSignIn value)? signIn,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdatePhoneNumber value)? updatePhoneNumber,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_ChangeTabBarIndex value)? changeTabBarIndex,
    TResult Function(_UpdatePhoto value)? updatePhoto,
  }) {
    return updatePhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_SocialSignIn value)? signIn,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdatePhoneNumber value)? updatePhoneNumber,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_ChangeTabBarIndex value)? changeTabBarIndex,
    TResult Function(_UpdatePhoto value)? updatePhoto,
    required TResult orElse(),
  }) {
    if (updatePhoneNumber != null) {
      return updatePhoneNumber(this);
    }
    return orElse();
  }
}

abstract class _UpdatePhoneNumber implements AuthEvent {
  factory _UpdatePhoneNumber(
      {required final String phoneNumber,
      required final BuildContext context}) = _$_UpdatePhoneNumber;

  String get phoneNumber;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_UpdatePhoneNumberCopyWith<_$_UpdatePhoneNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdatePasswordCopyWith<$Res> {
  factory _$$_UpdatePasswordCopyWith(
          _$_UpdatePassword value, $Res Function(_$_UpdatePassword) then) =
      __$$_UpdatePasswordCopyWithImpl<$Res>;
  $Res call({String oldPassword, String newPassword});
}

/// @nodoc
class __$$_UpdatePasswordCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_UpdatePasswordCopyWith<$Res> {
  __$$_UpdatePasswordCopyWithImpl(
      _$_UpdatePassword _value, $Res Function(_$_UpdatePassword) _then)
      : super(_value, (v) => _then(v as _$_UpdatePassword));

  @override
  _$_UpdatePassword get _value => super._value as _$_UpdatePassword;

  @override
  $Res call({
    Object? oldPassword = freezed,
    Object? newPassword = freezed,
  }) {
    return _then(_$_UpdatePassword(
      oldPassword: oldPassword == freezed
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: newPassword == freezed
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdatePassword implements _UpdatePassword {
  _$_UpdatePassword({required this.oldPassword, required this.newPassword});

  @override
  final String oldPassword;
  @override
  final String newPassword;

  @override
  String toString() {
    return 'AuthEvent.updatePassword(oldPassword: $oldPassword, newPassword: $newPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdatePassword &&
            const DeepCollectionEquality()
                .equals(other.oldPassword, oldPassword) &&
            const DeepCollectionEquality()
                .equals(other.newPassword, newPassword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(oldPassword),
      const DeepCollectionEquality().hash(newPassword));

  @JsonKey(ignore: true)
  @override
  _$$_UpdatePasswordCopyWith<_$_UpdatePassword> get copyWith =>
      __$$_UpdatePasswordCopyWithImpl<_$_UpdatePassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AuthModel login, AssetEntity images, BuildContext context)
        signUp,
    required TResult Function(AuthModel email) forgotPassword,
    required TResult Function(
            SocialSignInType type, BuildContext context, AuthModel? login)
        signIn,
    required TResult Function(AuthModel newPassword) newPassword,
    required TResult Function() signOut,
    required TResult Function(BuildContext context, bool isSignUp) imagePick,
    required TResult Function() getUser,
    required TResult Function(String email, String password) updateEmail,
    required TResult Function(String name) updateName,
    required TResult Function(String phoneNumber, BuildContext context)
        updatePhoneNumber,
    required TResult Function(String oldPassword, String newPassword)
        updatePassword,
    required TResult Function(int index) changeTabBarIndex,
    required TResult Function() updatePhoto,
  }) {
    return updatePassword(oldPassword, this.newPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images, BuildContext context)?
        signUp,
    TResult Function(AuthModel email)? forgotPassword,
    TResult Function(
            SocialSignInType type, BuildContext context, AuthModel? login)?
        signIn,
    TResult Function(AuthModel newPassword)? newPassword,
    TResult Function()? signOut,
    TResult Function(BuildContext context, bool isSignUp)? imagePick,
    TResult Function()? getUser,
    TResult Function(String email, String password)? updateEmail,
    TResult Function(String name)? updateName,
    TResult Function(String phoneNumber, BuildContext context)?
        updatePhoneNumber,
    TResult Function(String oldPassword, String newPassword)? updatePassword,
    TResult Function(int index)? changeTabBarIndex,
    TResult Function()? updatePhoto,
  }) {
    return updatePassword?.call(oldPassword, this.newPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images, BuildContext context)?
        signUp,
    TResult Function(AuthModel email)? forgotPassword,
    TResult Function(
            SocialSignInType type, BuildContext context, AuthModel? login)?
        signIn,
    TResult Function(AuthModel newPassword)? newPassword,
    TResult Function()? signOut,
    TResult Function(BuildContext context, bool isSignUp)? imagePick,
    TResult Function()? getUser,
    TResult Function(String email, String password)? updateEmail,
    TResult Function(String name)? updateName,
    TResult Function(String phoneNumber, BuildContext context)?
        updatePhoneNumber,
    TResult Function(String oldPassword, String newPassword)? updatePassword,
    TResult Function(int index)? changeTabBarIndex,
    TResult Function()? updatePhoto,
    required TResult orElse(),
  }) {
    if (updatePassword != null) {
      return updatePassword(oldPassword, this.newPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_SocialSignIn value) signIn,
    required TResult Function(_NewPassword value) newPassword,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_ImagePick value) imagePick,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdatePhoneNumber value) updatePhoneNumber,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_ChangeTabBarIndex value) changeTabBarIndex,
    required TResult Function(_UpdatePhoto value) updatePhoto,
  }) {
    return updatePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_SocialSignIn value)? signIn,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdatePhoneNumber value)? updatePhoneNumber,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_ChangeTabBarIndex value)? changeTabBarIndex,
    TResult Function(_UpdatePhoto value)? updatePhoto,
  }) {
    return updatePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_SocialSignIn value)? signIn,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdatePhoneNumber value)? updatePhoneNumber,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_ChangeTabBarIndex value)? changeTabBarIndex,
    TResult Function(_UpdatePhoto value)? updatePhoto,
    required TResult orElse(),
  }) {
    if (updatePassword != null) {
      return updatePassword(this);
    }
    return orElse();
  }
}

abstract class _UpdatePassword implements AuthEvent {
  factory _UpdatePassword(
      {required final String oldPassword,
      required final String newPassword}) = _$_UpdatePassword;

  String get oldPassword;
  String get newPassword;
  @JsonKey(ignore: true)
  _$$_UpdatePasswordCopyWith<_$_UpdatePassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeTabBarIndexCopyWith<$Res> {
  factory _$$_ChangeTabBarIndexCopyWith(_$_ChangeTabBarIndex value,
          $Res Function(_$_ChangeTabBarIndex) then) =
      __$$_ChangeTabBarIndexCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$$_ChangeTabBarIndexCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_ChangeTabBarIndexCopyWith<$Res> {
  __$$_ChangeTabBarIndexCopyWithImpl(
      _$_ChangeTabBarIndex _value, $Res Function(_$_ChangeTabBarIndex) _then)
      : super(_value, (v) => _then(v as _$_ChangeTabBarIndex));

  @override
  _$_ChangeTabBarIndex get _value => super._value as _$_ChangeTabBarIndex;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$_ChangeTabBarIndex(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ChangeTabBarIndex implements _ChangeTabBarIndex {
  _$_ChangeTabBarIndex({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'AuthEvent.changeTabBarIndex(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeTabBarIndex &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$_ChangeTabBarIndexCopyWith<_$_ChangeTabBarIndex> get copyWith =>
      __$$_ChangeTabBarIndexCopyWithImpl<_$_ChangeTabBarIndex>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AuthModel login, AssetEntity images, BuildContext context)
        signUp,
    required TResult Function(AuthModel email) forgotPassword,
    required TResult Function(
            SocialSignInType type, BuildContext context, AuthModel? login)
        signIn,
    required TResult Function(AuthModel newPassword) newPassword,
    required TResult Function() signOut,
    required TResult Function(BuildContext context, bool isSignUp) imagePick,
    required TResult Function() getUser,
    required TResult Function(String email, String password) updateEmail,
    required TResult Function(String name) updateName,
    required TResult Function(String phoneNumber, BuildContext context)
        updatePhoneNumber,
    required TResult Function(String oldPassword, String newPassword)
        updatePassword,
    required TResult Function(int index) changeTabBarIndex,
    required TResult Function() updatePhoto,
  }) {
    return changeTabBarIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images, BuildContext context)?
        signUp,
    TResult Function(AuthModel email)? forgotPassword,
    TResult Function(
            SocialSignInType type, BuildContext context, AuthModel? login)?
        signIn,
    TResult Function(AuthModel newPassword)? newPassword,
    TResult Function()? signOut,
    TResult Function(BuildContext context, bool isSignUp)? imagePick,
    TResult Function()? getUser,
    TResult Function(String email, String password)? updateEmail,
    TResult Function(String name)? updateName,
    TResult Function(String phoneNumber, BuildContext context)?
        updatePhoneNumber,
    TResult Function(String oldPassword, String newPassword)? updatePassword,
    TResult Function(int index)? changeTabBarIndex,
    TResult Function()? updatePhoto,
  }) {
    return changeTabBarIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images, BuildContext context)?
        signUp,
    TResult Function(AuthModel email)? forgotPassword,
    TResult Function(
            SocialSignInType type, BuildContext context, AuthModel? login)?
        signIn,
    TResult Function(AuthModel newPassword)? newPassword,
    TResult Function()? signOut,
    TResult Function(BuildContext context, bool isSignUp)? imagePick,
    TResult Function()? getUser,
    TResult Function(String email, String password)? updateEmail,
    TResult Function(String name)? updateName,
    TResult Function(String phoneNumber, BuildContext context)?
        updatePhoneNumber,
    TResult Function(String oldPassword, String newPassword)? updatePassword,
    TResult Function(int index)? changeTabBarIndex,
    TResult Function()? updatePhoto,
    required TResult orElse(),
  }) {
    if (changeTabBarIndex != null) {
      return changeTabBarIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_SocialSignIn value) signIn,
    required TResult Function(_NewPassword value) newPassword,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_ImagePick value) imagePick,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdatePhoneNumber value) updatePhoneNumber,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_ChangeTabBarIndex value) changeTabBarIndex,
    required TResult Function(_UpdatePhoto value) updatePhoto,
  }) {
    return changeTabBarIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_SocialSignIn value)? signIn,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdatePhoneNumber value)? updatePhoneNumber,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_ChangeTabBarIndex value)? changeTabBarIndex,
    TResult Function(_UpdatePhoto value)? updatePhoto,
  }) {
    return changeTabBarIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_SocialSignIn value)? signIn,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdatePhoneNumber value)? updatePhoneNumber,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_ChangeTabBarIndex value)? changeTabBarIndex,
    TResult Function(_UpdatePhoto value)? updatePhoto,
    required TResult orElse(),
  }) {
    if (changeTabBarIndex != null) {
      return changeTabBarIndex(this);
    }
    return orElse();
  }
}

abstract class _ChangeTabBarIndex implements AuthEvent {
  factory _ChangeTabBarIndex({required final int index}) = _$_ChangeTabBarIndex;

  int get index;
  @JsonKey(ignore: true)
  _$$_ChangeTabBarIndexCopyWith<_$_ChangeTabBarIndex> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdatePhotoCopyWith<$Res> {
  factory _$$_UpdatePhotoCopyWith(
          _$_UpdatePhoto value, $Res Function(_$_UpdatePhoto) then) =
      __$$_UpdatePhotoCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UpdatePhotoCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_UpdatePhotoCopyWith<$Res> {
  __$$_UpdatePhotoCopyWithImpl(
      _$_UpdatePhoto _value, $Res Function(_$_UpdatePhoto) _then)
      : super(_value, (v) => _then(v as _$_UpdatePhoto));

  @override
  _$_UpdatePhoto get _value => super._value as _$_UpdatePhoto;
}

/// @nodoc

class _$_UpdatePhoto implements _UpdatePhoto {
  _$_UpdatePhoto();

  @override
  String toString() {
    return 'AuthEvent.updatePhoto()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UpdatePhoto);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AuthModel login, AssetEntity images, BuildContext context)
        signUp,
    required TResult Function(AuthModel email) forgotPassword,
    required TResult Function(
            SocialSignInType type, BuildContext context, AuthModel? login)
        signIn,
    required TResult Function(AuthModel newPassword) newPassword,
    required TResult Function() signOut,
    required TResult Function(BuildContext context, bool isSignUp) imagePick,
    required TResult Function() getUser,
    required TResult Function(String email, String password) updateEmail,
    required TResult Function(String name) updateName,
    required TResult Function(String phoneNumber, BuildContext context)
        updatePhoneNumber,
    required TResult Function(String oldPassword, String newPassword)
        updatePassword,
    required TResult Function(int index) changeTabBarIndex,
    required TResult Function() updatePhoto,
  }) {
    return updatePhoto();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images, BuildContext context)?
        signUp,
    TResult Function(AuthModel email)? forgotPassword,
    TResult Function(
            SocialSignInType type, BuildContext context, AuthModel? login)?
        signIn,
    TResult Function(AuthModel newPassword)? newPassword,
    TResult Function()? signOut,
    TResult Function(BuildContext context, bool isSignUp)? imagePick,
    TResult Function()? getUser,
    TResult Function(String email, String password)? updateEmail,
    TResult Function(String name)? updateName,
    TResult Function(String phoneNumber, BuildContext context)?
        updatePhoneNumber,
    TResult Function(String oldPassword, String newPassword)? updatePassword,
    TResult Function(int index)? changeTabBarIndex,
    TResult Function()? updatePhoto,
  }) {
    return updatePhoto?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images, BuildContext context)?
        signUp,
    TResult Function(AuthModel email)? forgotPassword,
    TResult Function(
            SocialSignInType type, BuildContext context, AuthModel? login)?
        signIn,
    TResult Function(AuthModel newPassword)? newPassword,
    TResult Function()? signOut,
    TResult Function(BuildContext context, bool isSignUp)? imagePick,
    TResult Function()? getUser,
    TResult Function(String email, String password)? updateEmail,
    TResult Function(String name)? updateName,
    TResult Function(String phoneNumber, BuildContext context)?
        updatePhoneNumber,
    TResult Function(String oldPassword, String newPassword)? updatePassword,
    TResult Function(int index)? changeTabBarIndex,
    TResult Function()? updatePhoto,
    required TResult orElse(),
  }) {
    if (updatePhoto != null) {
      return updatePhoto();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_SocialSignIn value) signIn,
    required TResult Function(_NewPassword value) newPassword,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_ImagePick value) imagePick,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_UpdateEmail value) updateEmail,
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdatePhoneNumber value) updatePhoneNumber,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_ChangeTabBarIndex value) changeTabBarIndex,
    required TResult Function(_UpdatePhoto value) updatePhoto,
  }) {
    return updatePhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_SocialSignIn value)? signIn,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdatePhoneNumber value)? updatePhoneNumber,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_ChangeTabBarIndex value)? changeTabBarIndex,
    TResult Function(_UpdatePhoto value)? updatePhoto,
  }) {
    return updatePhoto?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_SocialSignIn value)? signIn,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_UpdateEmail value)? updateEmail,
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdatePhoneNumber value)? updatePhoneNumber,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_ChangeTabBarIndex value)? changeTabBarIndex,
    TResult Function(_UpdatePhoto value)? updatePhoto,
    required TResult orElse(),
  }) {
    if (updatePhoto != null) {
      return updatePhoto(this);
    }
    return orElse();
  }
}

abstract class _UpdatePhoto implements AuthEvent {
  factory _UpdatePhoto() = _$_UpdatePhoto;
}

/// @nodoc
mixin _$AuthState {
  bool get isEmailValid => throw _privateConstructorUsedError;
  bool get isPasswordValid => throw _privateConstructorUsedError;
  bool get isUserNameValid => throw _privateConstructorUsedError;
  bool get navigateToHome => throw _privateConstructorUsedError;
  bool get navigatorPop => throw _privateConstructorUsedError;
  bool get proceedToVerifyCode => throw _privateConstructorUsedError;
  AssetEntity? get assetEntity => throw _privateConstructorUsedError;
  bool get signOut => throw _privateConstructorUsedError;
  UserModel? get userModel => throw _privateConstructorUsedError;
  int get tabBarIndex => throw _privateConstructorUsedError;
  AssetEntity? get profileAssetEntity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
  $Res call(
      {bool isEmailValid,
      bool isPasswordValid,
      bool isUserNameValid,
      bool navigateToHome,
      bool navigatorPop,
      bool proceedToVerifyCode,
      AssetEntity? assetEntity,
      bool signOut,
      UserModel? userModel,
      int tabBarIndex,
      AssetEntity? profileAssetEntity});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;

  @override
  $Res call({
    Object? isEmailValid = freezed,
    Object? isPasswordValid = freezed,
    Object? isUserNameValid = freezed,
    Object? navigateToHome = freezed,
    Object? navigatorPop = freezed,
    Object? proceedToVerifyCode = freezed,
    Object? assetEntity = freezed,
    Object? signOut = freezed,
    Object? userModel = freezed,
    Object? tabBarIndex = freezed,
    Object? profileAssetEntity = freezed,
  }) {
    return _then(_value.copyWith(
      isEmailValid: isEmailValid == freezed
          ? _value.isEmailValid
          : isEmailValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordValid: isPasswordValid == freezed
          ? _value.isPasswordValid
          : isPasswordValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isUserNameValid: isUserNameValid == freezed
          ? _value.isUserNameValid
          : isUserNameValid // ignore: cast_nullable_to_non_nullable
              as bool,
      navigateToHome: navigateToHome == freezed
          ? _value.navigateToHome
          : navigateToHome // ignore: cast_nullable_to_non_nullable
              as bool,
      navigatorPop: navigatorPop == freezed
          ? _value.navigatorPop
          : navigatorPop // ignore: cast_nullable_to_non_nullable
              as bool,
      proceedToVerifyCode: proceedToVerifyCode == freezed
          ? _value.proceedToVerifyCode
          : proceedToVerifyCode // ignore: cast_nullable_to_non_nullable
              as bool,
      assetEntity: assetEntity == freezed
          ? _value.assetEntity
          : assetEntity // ignore: cast_nullable_to_non_nullable
              as AssetEntity?,
      signOut: signOut == freezed
          ? _value.signOut
          : signOut // ignore: cast_nullable_to_non_nullable
              as bool,
      userModel: userModel == freezed
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      tabBarIndex: tabBarIndex == freezed
          ? _value.tabBarIndex
          : tabBarIndex // ignore: cast_nullable_to_non_nullable
              as int,
      profileAssetEntity: profileAssetEntity == freezed
          ? _value.profileAssetEntity
          : profileAssetEntity // ignore: cast_nullable_to_non_nullable
              as AssetEntity?,
    ));
  }
}

/// @nodoc
abstract class _$$_SignInStateCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$_SignInStateCopyWith(
          _$_SignInState value, $Res Function(_$_SignInState) then) =
      __$$_SignInStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isEmailValid,
      bool isPasswordValid,
      bool isUserNameValid,
      bool navigateToHome,
      bool navigatorPop,
      bool proceedToVerifyCode,
      AssetEntity? assetEntity,
      bool signOut,
      UserModel? userModel,
      int tabBarIndex,
      AssetEntity? profileAssetEntity});
}

/// @nodoc
class __$$_SignInStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_SignInStateCopyWith<$Res> {
  __$$_SignInStateCopyWithImpl(
      _$_SignInState _value, $Res Function(_$_SignInState) _then)
      : super(_value, (v) => _then(v as _$_SignInState));

  @override
  _$_SignInState get _value => super._value as _$_SignInState;

  @override
  $Res call({
    Object? isEmailValid = freezed,
    Object? isPasswordValid = freezed,
    Object? isUserNameValid = freezed,
    Object? navigateToHome = freezed,
    Object? navigatorPop = freezed,
    Object? proceedToVerifyCode = freezed,
    Object? assetEntity = freezed,
    Object? signOut = freezed,
    Object? userModel = freezed,
    Object? tabBarIndex = freezed,
    Object? profileAssetEntity = freezed,
  }) {
    return _then(_$_SignInState(
      isEmailValid: isEmailValid == freezed
          ? _value.isEmailValid
          : isEmailValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordValid: isPasswordValid == freezed
          ? _value.isPasswordValid
          : isPasswordValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isUserNameValid: isUserNameValid == freezed
          ? _value.isUserNameValid
          : isUserNameValid // ignore: cast_nullable_to_non_nullable
              as bool,
      navigateToHome: navigateToHome == freezed
          ? _value.navigateToHome
          : navigateToHome // ignore: cast_nullable_to_non_nullable
              as bool,
      navigatorPop: navigatorPop == freezed
          ? _value.navigatorPop
          : navigatorPop // ignore: cast_nullable_to_non_nullable
              as bool,
      proceedToVerifyCode: proceedToVerifyCode == freezed
          ? _value.proceedToVerifyCode
          : proceedToVerifyCode // ignore: cast_nullable_to_non_nullable
              as bool,
      assetEntity: assetEntity == freezed
          ? _value.assetEntity
          : assetEntity // ignore: cast_nullable_to_non_nullable
              as AssetEntity?,
      signOut: signOut == freezed
          ? _value.signOut
          : signOut // ignore: cast_nullable_to_non_nullable
              as bool,
      userModel: userModel == freezed
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      tabBarIndex: tabBarIndex == freezed
          ? _value.tabBarIndex
          : tabBarIndex // ignore: cast_nullable_to_non_nullable
              as int,
      profileAssetEntity: profileAssetEntity == freezed
          ? _value.profileAssetEntity
          : profileAssetEntity // ignore: cast_nullable_to_non_nullable
              as AssetEntity?,
    ));
  }
}

/// @nodoc

class _$_SignInState implements _SignInState {
  const _$_SignInState(
      {this.isEmailValid = false,
      this.isPasswordValid = false,
      this.isUserNameValid = false,
      this.navigateToHome = false,
      this.navigatorPop = false,
      this.proceedToVerifyCode = false,
      this.assetEntity = null,
      this.signOut = false,
      this.userModel = null,
      this.tabBarIndex = 0,
      this.profileAssetEntity = null});

  @override
  @JsonKey()
  final bool isEmailValid;
  @override
  @JsonKey()
  final bool isPasswordValid;
  @override
  @JsonKey()
  final bool isUserNameValid;
  @override
  @JsonKey()
  final bool navigateToHome;
  @override
  @JsonKey()
  final bool navigatorPop;
  @override
  @JsonKey()
  final bool proceedToVerifyCode;
  @override
  @JsonKey()
  final AssetEntity? assetEntity;
  @override
  @JsonKey()
  final bool signOut;
  @override
  @JsonKey()
  final UserModel? userModel;
  @override
  @JsonKey()
  final int tabBarIndex;
  @override
  @JsonKey()
  final AssetEntity? profileAssetEntity;

  @override
  String toString() {
    return 'AuthState(isEmailValid: $isEmailValid, isPasswordValid: $isPasswordValid, isUserNameValid: $isUserNameValid, navigateToHome: $navigateToHome, navigatorPop: $navigatorPop, proceedToVerifyCode: $proceedToVerifyCode, assetEntity: $assetEntity, signOut: $signOut, userModel: $userModel, tabBarIndex: $tabBarIndex, profileAssetEntity: $profileAssetEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInState &&
            const DeepCollectionEquality()
                .equals(other.isEmailValid, isEmailValid) &&
            const DeepCollectionEquality()
                .equals(other.isPasswordValid, isPasswordValid) &&
            const DeepCollectionEquality()
                .equals(other.isUserNameValid, isUserNameValid) &&
            const DeepCollectionEquality()
                .equals(other.navigateToHome, navigateToHome) &&
            const DeepCollectionEquality()
                .equals(other.navigatorPop, navigatorPop) &&
            const DeepCollectionEquality()
                .equals(other.proceedToVerifyCode, proceedToVerifyCode) &&
            const DeepCollectionEquality()
                .equals(other.assetEntity, assetEntity) &&
            const DeepCollectionEquality().equals(other.signOut, signOut) &&
            const DeepCollectionEquality().equals(other.userModel, userModel) &&
            const DeepCollectionEquality()
                .equals(other.tabBarIndex, tabBarIndex) &&
            const DeepCollectionEquality()
                .equals(other.profileAssetEntity, profileAssetEntity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isEmailValid),
      const DeepCollectionEquality().hash(isPasswordValid),
      const DeepCollectionEquality().hash(isUserNameValid),
      const DeepCollectionEquality().hash(navigateToHome),
      const DeepCollectionEquality().hash(navigatorPop),
      const DeepCollectionEquality().hash(proceedToVerifyCode),
      const DeepCollectionEquality().hash(assetEntity),
      const DeepCollectionEquality().hash(signOut),
      const DeepCollectionEquality().hash(userModel),
      const DeepCollectionEquality().hash(tabBarIndex),
      const DeepCollectionEquality().hash(profileAssetEntity));

  @JsonKey(ignore: true)
  @override
  _$$_SignInStateCopyWith<_$_SignInState> get copyWith =>
      __$$_SignInStateCopyWithImpl<_$_SignInState>(this, _$identity);
}

abstract class _SignInState implements AuthState {
  const factory _SignInState(
      {final bool isEmailValid,
      final bool isPasswordValid,
      final bool isUserNameValid,
      final bool navigateToHome,
      final bool navigatorPop,
      final bool proceedToVerifyCode,
      final AssetEntity? assetEntity,
      final bool signOut,
      final UserModel? userModel,
      final int tabBarIndex,
      final AssetEntity? profileAssetEntity}) = _$_SignInState;

  @override
  bool get isEmailValid;
  @override
  bool get isPasswordValid;
  @override
  bool get isUserNameValid;
  @override
  bool get navigateToHome;
  @override
  bool get navigatorPop;
  @override
  bool get proceedToVerifyCode;
  @override
  AssetEntity? get assetEntity;
  @override
  bool get signOut;
  @override
  UserModel? get userModel;
  @override
  int get tabBarIndex;
  @override
  AssetEntity? get profileAssetEntity;
  @override
  @JsonKey(ignore: true)
  _$$_SignInStateCopyWith<_$_SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}
