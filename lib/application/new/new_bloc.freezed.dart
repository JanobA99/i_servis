// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'new_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewEvent {
  AuthModel get login => throw _privateConstructorUsedError;
  AssetEntity get images => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthModel login, AssetEntity images) signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images)? signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images)? signUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewEventCopyWith<NewEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewEventCopyWith<$Res> {
  factory $NewEventCopyWith(NewEvent value, $Res Function(NewEvent) then) =
      _$NewEventCopyWithImpl<$Res>;
  $Res call({AuthModel login, AssetEntity images});
}

/// @nodoc
class _$NewEventCopyWithImpl<$Res> implements $NewEventCopyWith<$Res> {
  _$NewEventCopyWithImpl(this._value, this._then);

  final NewEvent _value;
  // ignore: unused_field
  final $Res Function(NewEvent) _then;

  @override
  $Res call({
    Object? login = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as AuthModel,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as AssetEntity,
    ));
  }
}

/// @nodoc
abstract class _$$_SignUpCopyWith<$Res> implements $NewEventCopyWith<$Res> {
  factory _$$_SignUpCopyWith(_$_SignUp value, $Res Function(_$_SignUp) then) =
      __$$_SignUpCopyWithImpl<$Res>;
  @override
  $Res call({AuthModel login, AssetEntity images});
}

/// @nodoc
class __$$_SignUpCopyWithImpl<$Res> extends _$NewEventCopyWithImpl<$Res>
    implements _$$_SignUpCopyWith<$Res> {
  __$$_SignUpCopyWithImpl(_$_SignUp _value, $Res Function(_$_SignUp) _then)
      : super(_value, (v) => _then(v as _$_SignUp));

  @override
  _$_SignUp get _value => super._value as _$_SignUp;

  @override
  $Res call({
    Object? login = freezed,
    Object? images = freezed,
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
    ));
  }
}

/// @nodoc

class _$_SignUp implements _SignUp {
  _$_SignUp({required this.login, required this.images});

  @override
  final AuthModel login;
  @override
  final AssetEntity images;

  @override
  String toString() {
    return 'NewEvent.signUp(login: $login, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUp &&
            const DeepCollectionEquality().equals(other.login, login) &&
            const DeepCollectionEquality().equals(other.images, images));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(login),
      const DeepCollectionEquality().hash(images));

  @JsonKey(ignore: true)
  @override
  _$$_SignUpCopyWith<_$_SignUp> get copyWith =>
      __$$_SignUpCopyWithImpl<_$_SignUp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthModel login, AssetEntity images) signUp,
  }) {
    return signUp(login, images);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images)? signUp,
  }) {
    return signUp?.call(login, images);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images)? signUp,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(login, images);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class _SignUp implements NewEvent {
  factory _SignUp(
      {required final AuthModel login,
      required final AssetEntity images}) = _$_SignUp;

  @override
  AuthModel get login;
  @override
  AssetEntity get images;
  @override
  @JsonKey(ignore: true)
  _$$_SignUpCopyWith<_$_SignUp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NewState {
  UserModel? get userModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewStateCopyWith<NewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewStateCopyWith<$Res> {
  factory $NewStateCopyWith(NewState value, $Res Function(NewState) then) =
      _$NewStateCopyWithImpl<$Res>;
  $Res call({UserModel? userModel});
}

/// @nodoc
class _$NewStateCopyWithImpl<$Res> implements $NewStateCopyWith<$Res> {
  _$NewStateCopyWithImpl(this._value, this._then);

  final NewState _value;
  // ignore: unused_field
  final $Res Function(NewState) _then;

  @override
  $Res call({
    Object? userModel = freezed,
  }) {
    return _then(_value.copyWith(
      userModel: userModel == freezed
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc
abstract class _$$_NewStateCopyWith<$Res> implements $NewStateCopyWith<$Res> {
  factory _$$_NewStateCopyWith(
          _$_NewState value, $Res Function(_$_NewState) then) =
      __$$_NewStateCopyWithImpl<$Res>;
  @override
  $Res call({UserModel? userModel});
}

/// @nodoc
class __$$_NewStateCopyWithImpl<$Res> extends _$NewStateCopyWithImpl<$Res>
    implements _$$_NewStateCopyWith<$Res> {
  __$$_NewStateCopyWithImpl(
      _$_NewState _value, $Res Function(_$_NewState) _then)
      : super(_value, (v) => _then(v as _$_NewState));

  @override
  _$_NewState get _value => super._value as _$_NewState;

  @override
  $Res call({
    Object? userModel = freezed,
  }) {
    return _then(_$_NewState(
      userModel: userModel == freezed
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc

class _$_NewState implements _NewState {
  const _$_NewState({this.userModel = null});

  @override
  @JsonKey()
  final UserModel? userModel;

  @override
  String toString() {
    return 'NewState(userModel: $userModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewState &&
            const DeepCollectionEquality().equals(other.userModel, userModel));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userModel));

  @JsonKey(ignore: true)
  @override
  _$$_NewStateCopyWith<_$_NewState> get copyWith =>
      __$$_NewStateCopyWithImpl<_$_NewState>(this, _$identity);
}

abstract class _NewState implements NewState {
  const factory _NewState({final UserModel? userModel}) = _$_NewState;

  @override
  UserModel? get userModel;
  @override
  @JsonKey(ignore: true)
  _$$_NewStateCopyWith<_$_NewState> get copyWith =>
      throw _privateConstructorUsedError;
}
