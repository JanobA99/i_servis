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
    required TResult Function() checkAuth,
    required TResult Function(String phoneNumber, String code) verifyCode,
    required TResult Function(BarberSignUpModel signUpModel) signUpBarber,
    required TResult Function(AssetEntity? pickedImage) uploadProfileImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function(String phoneNumber, String code)? verifyCode,
    TResult Function(BarberSignUpModel signUpModel)? signUpBarber,
    TResult Function(AssetEntity? pickedImage)? uploadProfileImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function(String phoneNumber, String code)? verifyCode,
    TResult Function(BarberSignUpModel signUpModel)? signUpBarber,
    TResult Function(AssetEntity? pickedImage)? uploadProfileImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_VerifyCode value) verifyCode,
    required TResult Function(_SignUpBarber value) signUpBarber,
    required TResult Function(_UploadProfileImage value) uploadProfileImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_SignUpBarber value)? signUpBarber,
    TResult Function(_UploadProfileImage value)? uploadProfileImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_SignUpBarber value)? signUpBarber,
    TResult Function(_UploadProfileImage value)? uploadProfileImage,
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
abstract class _$$_CheckAuthCopyWith<$Res> {
  factory _$$_CheckAuthCopyWith(
          _$_CheckAuth value, $Res Function(_$_CheckAuth) then) =
      __$$_CheckAuthCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CheckAuthCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_CheckAuthCopyWith<$Res> {
  __$$_CheckAuthCopyWithImpl(
      _$_CheckAuth _value, $Res Function(_$_CheckAuth) _then)
      : super(_value, (v) => _then(v as _$_CheckAuth));

  @override
  _$_CheckAuth get _value => super._value as _$_CheckAuth;
}

/// @nodoc

class _$_CheckAuth implements _CheckAuth {
  const _$_CheckAuth();

  @override
  String toString() {
    return 'AuthEvent.checkAuth()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CheckAuth);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuth,
    required TResult Function(String phoneNumber, String code) verifyCode,
    required TResult Function(BarberSignUpModel signUpModel) signUpBarber,
    required TResult Function(AssetEntity? pickedImage) uploadProfileImage,
  }) {
    return checkAuth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function(String phoneNumber, String code)? verifyCode,
    TResult Function(BarberSignUpModel signUpModel)? signUpBarber,
    TResult Function(AssetEntity? pickedImage)? uploadProfileImage,
  }) {
    return checkAuth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function(String phoneNumber, String code)? verifyCode,
    TResult Function(BarberSignUpModel signUpModel)? signUpBarber,
    TResult Function(AssetEntity? pickedImage)? uploadProfileImage,
    required TResult orElse(),
  }) {
    if (checkAuth != null) {
      return checkAuth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_VerifyCode value) verifyCode,
    required TResult Function(_SignUpBarber value) signUpBarber,
    required TResult Function(_UploadProfileImage value) uploadProfileImage,
  }) {
    return checkAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_SignUpBarber value)? signUpBarber,
    TResult Function(_UploadProfileImage value)? uploadProfileImage,
  }) {
    return checkAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_SignUpBarber value)? signUpBarber,
    TResult Function(_UploadProfileImage value)? uploadProfileImage,
    required TResult orElse(),
  }) {
    if (checkAuth != null) {
      return checkAuth(this);
    }
    return orElse();
  }
}

abstract class _CheckAuth implements AuthEvent {
  const factory _CheckAuth() = _$_CheckAuth;
}

/// @nodoc
abstract class _$$_VerifyCodeCopyWith<$Res> {
  factory _$$_VerifyCodeCopyWith(
          _$_VerifyCode value, $Res Function(_$_VerifyCode) then) =
      __$$_VerifyCodeCopyWithImpl<$Res>;
  $Res call({String phoneNumber, String code});
}

/// @nodoc
class __$$_VerifyCodeCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_VerifyCodeCopyWith<$Res> {
  __$$_VerifyCodeCopyWithImpl(
      _$_VerifyCode _value, $Res Function(_$_VerifyCode) _then)
      : super(_value, (v) => _then(v as _$_VerifyCode));

  @override
  _$_VerifyCode get _value => super._value as _$_VerifyCode;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? code = freezed,
  }) {
    return _then(_$_VerifyCode(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_VerifyCode implements _VerifyCode {
  const _$_VerifyCode({required this.phoneNumber, required this.code});

  @override
  final String phoneNumber;
  @override
  final String code;

  @override
  String toString() {
    return 'AuthEvent.verifyCode(phoneNumber: $phoneNumber, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerifyCode &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.code, code));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(code));

  @JsonKey(ignore: true)
  @override
  _$$_VerifyCodeCopyWith<_$_VerifyCode> get copyWith =>
      __$$_VerifyCodeCopyWithImpl<_$_VerifyCode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuth,
    required TResult Function(String phoneNumber, String code) verifyCode,
    required TResult Function(BarberSignUpModel signUpModel) signUpBarber,
    required TResult Function(AssetEntity? pickedImage) uploadProfileImage,
  }) {
    return verifyCode(phoneNumber, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function(String phoneNumber, String code)? verifyCode,
    TResult Function(BarberSignUpModel signUpModel)? signUpBarber,
    TResult Function(AssetEntity? pickedImage)? uploadProfileImage,
  }) {
    return verifyCode?.call(phoneNumber, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function(String phoneNumber, String code)? verifyCode,
    TResult Function(BarberSignUpModel signUpModel)? signUpBarber,
    TResult Function(AssetEntity? pickedImage)? uploadProfileImage,
    required TResult orElse(),
  }) {
    if (verifyCode != null) {
      return verifyCode(phoneNumber, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_VerifyCode value) verifyCode,
    required TResult Function(_SignUpBarber value) signUpBarber,
    required TResult Function(_UploadProfileImage value) uploadProfileImage,
  }) {
    return verifyCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_SignUpBarber value)? signUpBarber,
    TResult Function(_UploadProfileImage value)? uploadProfileImage,
  }) {
    return verifyCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_SignUpBarber value)? signUpBarber,
    TResult Function(_UploadProfileImage value)? uploadProfileImage,
    required TResult orElse(),
  }) {
    if (verifyCode != null) {
      return verifyCode(this);
    }
    return orElse();
  }
}

abstract class _VerifyCode implements AuthEvent {
  const factory _VerifyCode(
      {required final String phoneNumber,
      required final String code}) = _$_VerifyCode;

  String get phoneNumber;
  String get code;
  @JsonKey(ignore: true)
  _$$_VerifyCodeCopyWith<_$_VerifyCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignUpBarberCopyWith<$Res> {
  factory _$$_SignUpBarberCopyWith(
          _$_SignUpBarber value, $Res Function(_$_SignUpBarber) then) =
      __$$_SignUpBarberCopyWithImpl<$Res>;
  $Res call({BarberSignUpModel signUpModel});
}

/// @nodoc
class __$$_SignUpBarberCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_SignUpBarberCopyWith<$Res> {
  __$$_SignUpBarberCopyWithImpl(
      _$_SignUpBarber _value, $Res Function(_$_SignUpBarber) _then)
      : super(_value, (v) => _then(v as _$_SignUpBarber));

  @override
  _$_SignUpBarber get _value => super._value as _$_SignUpBarber;

  @override
  $Res call({
    Object? signUpModel = freezed,
  }) {
    return _then(_$_SignUpBarber(
      signUpModel: signUpModel == freezed
          ? _value.signUpModel
          : signUpModel // ignore: cast_nullable_to_non_nullable
              as BarberSignUpModel,
    ));
  }
}

/// @nodoc

class _$_SignUpBarber implements _SignUpBarber {
  const _$_SignUpBarber({required this.signUpModel});

  @override
  final BarberSignUpModel signUpModel;

  @override
  String toString() {
    return 'AuthEvent.signUpBarber(signUpModel: $signUpModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpBarber &&
            const DeepCollectionEquality()
                .equals(other.signUpModel, signUpModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(signUpModel));

  @JsonKey(ignore: true)
  @override
  _$$_SignUpBarberCopyWith<_$_SignUpBarber> get copyWith =>
      __$$_SignUpBarberCopyWithImpl<_$_SignUpBarber>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuth,
    required TResult Function(String phoneNumber, String code) verifyCode,
    required TResult Function(BarberSignUpModel signUpModel) signUpBarber,
    required TResult Function(AssetEntity? pickedImage) uploadProfileImage,
  }) {
    return signUpBarber(signUpModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function(String phoneNumber, String code)? verifyCode,
    TResult Function(BarberSignUpModel signUpModel)? signUpBarber,
    TResult Function(AssetEntity? pickedImage)? uploadProfileImage,
  }) {
    return signUpBarber?.call(signUpModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function(String phoneNumber, String code)? verifyCode,
    TResult Function(BarberSignUpModel signUpModel)? signUpBarber,
    TResult Function(AssetEntity? pickedImage)? uploadProfileImage,
    required TResult orElse(),
  }) {
    if (signUpBarber != null) {
      return signUpBarber(signUpModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_VerifyCode value) verifyCode,
    required TResult Function(_SignUpBarber value) signUpBarber,
    required TResult Function(_UploadProfileImage value) uploadProfileImage,
  }) {
    return signUpBarber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_SignUpBarber value)? signUpBarber,
    TResult Function(_UploadProfileImage value)? uploadProfileImage,
  }) {
    return signUpBarber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_SignUpBarber value)? signUpBarber,
    TResult Function(_UploadProfileImage value)? uploadProfileImage,
    required TResult orElse(),
  }) {
    if (signUpBarber != null) {
      return signUpBarber(this);
    }
    return orElse();
  }
}

abstract class _SignUpBarber implements AuthEvent {
  const factory _SignUpBarber({required final BarberSignUpModel signUpModel}) =
      _$_SignUpBarber;

  BarberSignUpModel get signUpModel;
  @JsonKey(ignore: true)
  _$$_SignUpBarberCopyWith<_$_SignUpBarber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UploadProfileImageCopyWith<$Res> {
  factory _$$_UploadProfileImageCopyWith(_$_UploadProfileImage value,
          $Res Function(_$_UploadProfileImage) then) =
      __$$_UploadProfileImageCopyWithImpl<$Res>;
  $Res call({AssetEntity? pickedImage});
}

/// @nodoc
class __$$_UploadProfileImageCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_UploadProfileImageCopyWith<$Res> {
  __$$_UploadProfileImageCopyWithImpl(
      _$_UploadProfileImage _value, $Res Function(_$_UploadProfileImage) _then)
      : super(_value, (v) => _then(v as _$_UploadProfileImage));

  @override
  _$_UploadProfileImage get _value => super._value as _$_UploadProfileImage;

  @override
  $Res call({
    Object? pickedImage = freezed,
  }) {
    return _then(_$_UploadProfileImage(
      pickedImage: pickedImage == freezed
          ? _value.pickedImage
          : pickedImage // ignore: cast_nullable_to_non_nullable
              as AssetEntity?,
    ));
  }
}

/// @nodoc

class _$_UploadProfileImage implements _UploadProfileImage {
  const _$_UploadProfileImage({required this.pickedImage});

  @override
  final AssetEntity? pickedImage;

  @override
  String toString() {
    return 'AuthEvent.uploadProfileImage(pickedImage: $pickedImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UploadProfileImage &&
            const DeepCollectionEquality()
                .equals(other.pickedImage, pickedImage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(pickedImage));

  @JsonKey(ignore: true)
  @override
  _$$_UploadProfileImageCopyWith<_$_UploadProfileImage> get copyWith =>
      __$$_UploadProfileImageCopyWithImpl<_$_UploadProfileImage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuth,
    required TResult Function(String phoneNumber, String code) verifyCode,
    required TResult Function(BarberSignUpModel signUpModel) signUpBarber,
    required TResult Function(AssetEntity? pickedImage) uploadProfileImage,
  }) {
    return uploadProfileImage(pickedImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function(String phoneNumber, String code)? verifyCode,
    TResult Function(BarberSignUpModel signUpModel)? signUpBarber,
    TResult Function(AssetEntity? pickedImage)? uploadProfileImage,
  }) {
    return uploadProfileImage?.call(pickedImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function(String phoneNumber, String code)? verifyCode,
    TResult Function(BarberSignUpModel signUpModel)? signUpBarber,
    TResult Function(AssetEntity? pickedImage)? uploadProfileImage,
    required TResult orElse(),
  }) {
    if (uploadProfileImage != null) {
      return uploadProfileImage(pickedImage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_VerifyCode value) verifyCode,
    required TResult Function(_SignUpBarber value) signUpBarber,
    required TResult Function(_UploadProfileImage value) uploadProfileImage,
  }) {
    return uploadProfileImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_SignUpBarber value)? signUpBarber,
    TResult Function(_UploadProfileImage value)? uploadProfileImage,
  }) {
    return uploadProfileImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_SignUpBarber value)? signUpBarber,
    TResult Function(_UploadProfileImage value)? uploadProfileImage,
    required TResult orElse(),
  }) {
    if (uploadProfileImage != null) {
      return uploadProfileImage(this);
    }
    return orElse();
  }
}

abstract class _UploadProfileImage implements AuthEvent {
  const factory _UploadProfileImage({required final AssetEntity? pickedImage}) =
      _$_UploadProfileImage;

  AssetEntity? get pickedImage;
  @JsonKey(ignore: true)
  _$$_UploadProfileImageCopyWith<_$_UploadProfileImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  bool get proceedToVerifyCode => throw _privateConstructorUsedError;
  bool get proceedToHome => throw _privateConstructorUsedError;
  bool get proceedToSignUp => throw _privateConstructorUsedError;
  bool? get isHomeToBarber => throw _privateConstructorUsedError;
  String? get imagePath => throw _privateConstructorUsedError;
  AssetEntity? get assetEntity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
  $Res call(
      {bool proceedToVerifyCode,
      bool proceedToHome,
      bool proceedToSignUp,
      bool? isHomeToBarber,
      String? imagePath,
      AssetEntity? assetEntity});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;

  @override
  $Res call({
    Object? proceedToVerifyCode = freezed,
    Object? proceedToHome = freezed,
    Object? proceedToSignUp = freezed,
    Object? isHomeToBarber = freezed,
    Object? imagePath = freezed,
    Object? assetEntity = freezed,
  }) {
    return _then(_value.copyWith(
      proceedToVerifyCode: proceedToVerifyCode == freezed
          ? _value.proceedToVerifyCode
          : proceedToVerifyCode // ignore: cast_nullable_to_non_nullable
              as bool,
      proceedToHome: proceedToHome == freezed
          ? _value.proceedToHome
          : proceedToHome // ignore: cast_nullable_to_non_nullable
              as bool,
      proceedToSignUp: proceedToSignUp == freezed
          ? _value.proceedToSignUp
          : proceedToSignUp // ignore: cast_nullable_to_non_nullable
              as bool,
      isHomeToBarber: isHomeToBarber == freezed
          ? _value.isHomeToBarber
          : isHomeToBarber // ignore: cast_nullable_to_non_nullable
              as bool?,
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      assetEntity: assetEntity == freezed
          ? _value.assetEntity
          : assetEntity // ignore: cast_nullable_to_non_nullable
              as AssetEntity?,
    ));
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool proceedToVerifyCode,
      bool proceedToHome,
      bool proceedToSignUp,
      bool? isHomeToBarber,
      String? imagePath,
      AssetEntity? assetEntity});
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, (v) => _then(v as _$_AuthState));

  @override
  _$_AuthState get _value => super._value as _$_AuthState;

  @override
  $Res call({
    Object? proceedToVerifyCode = freezed,
    Object? proceedToHome = freezed,
    Object? proceedToSignUp = freezed,
    Object? isHomeToBarber = freezed,
    Object? imagePath = freezed,
    Object? assetEntity = freezed,
  }) {
    return _then(_$_AuthState(
      proceedToVerifyCode: proceedToVerifyCode == freezed
          ? _value.proceedToVerifyCode
          : proceedToVerifyCode // ignore: cast_nullable_to_non_nullable
              as bool,
      proceedToHome: proceedToHome == freezed
          ? _value.proceedToHome
          : proceedToHome // ignore: cast_nullable_to_non_nullable
              as bool,
      proceedToSignUp: proceedToSignUp == freezed
          ? _value.proceedToSignUp
          : proceedToSignUp // ignore: cast_nullable_to_non_nullable
              as bool,
      isHomeToBarber: isHomeToBarber == freezed
          ? _value.isHomeToBarber
          : isHomeToBarber // ignore: cast_nullable_to_non_nullable
              as bool?,
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      assetEntity: assetEntity == freezed
          ? _value.assetEntity
          : assetEntity // ignore: cast_nullable_to_non_nullable
              as AssetEntity?,
    ));
  }
}

/// @nodoc

class _$_AuthState extends _AuthState {
  const _$_AuthState(
      {this.proceedToVerifyCode = false,
      this.proceedToHome = false,
      this.proceedToSignUp = false,
      this.isHomeToBarber = null,
      this.imagePath = null,
      this.assetEntity = null})
      : super._();

  @override
  @JsonKey()
  final bool proceedToVerifyCode;
  @override
  @JsonKey()
  final bool proceedToHome;
  @override
  @JsonKey()
  final bool proceedToSignUp;
  @override
  @JsonKey()
  final bool? isHomeToBarber;
  @override
  @JsonKey()
  final String? imagePath;
  @override
  @JsonKey()
  final AssetEntity? assetEntity;

  @override
  String toString() {
    return 'AuthState(proceedToVerifyCode: $proceedToVerifyCode, proceedToHome: $proceedToHome, proceedToSignUp: $proceedToSignUp, isHomeToBarber: $isHomeToBarber, imagePath: $imagePath, assetEntity: $assetEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            const DeepCollectionEquality()
                .equals(other.proceedToVerifyCode, proceedToVerifyCode) &&
            const DeepCollectionEquality()
                .equals(other.proceedToHome, proceedToHome) &&
            const DeepCollectionEquality()
                .equals(other.proceedToSignUp, proceedToSignUp) &&
            const DeepCollectionEquality()
                .equals(other.isHomeToBarber, isHomeToBarber) &&
            const DeepCollectionEquality().equals(other.imagePath, imagePath) &&
            const DeepCollectionEquality()
                .equals(other.assetEntity, assetEntity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(proceedToVerifyCode),
      const DeepCollectionEquality().hash(proceedToHome),
      const DeepCollectionEquality().hash(proceedToSignUp),
      const DeepCollectionEquality().hash(isHomeToBarber),
      const DeepCollectionEquality().hash(imagePath),
      const DeepCollectionEquality().hash(assetEntity));

  @JsonKey(ignore: true)
  @override
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState extends AuthState {
  const factory _AuthState(
      {final bool proceedToVerifyCode,
      final bool proceedToHome,
      final bool proceedToSignUp,
      final bool? isHomeToBarber,
      final String? imagePath,
      final AssetEntity? assetEntity}) = _$_AuthState;
  const _AuthState._() : super._();

  @override
  bool get proceedToVerifyCode;
  @override
  bool get proceedToHome;
  @override
  bool get proceedToSignUp;
  @override
  bool? get isHomeToBarber;
  @override
  String? get imagePath;
  @override
  AssetEntity? get assetEntity;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
