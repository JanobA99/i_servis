// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'currency_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CurrencyEvent {
  CurrencyModel get currencyModel => throw _privateConstructorUsedError;
  CurrencyModel? get oldCurrencyModel => throw _privateConstructorUsedError;
  bool get isUpdate => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CurrencyModel currencyModel,
            CurrencyModel? oldCurrencyModel, bool isUpdate)
        createCurrency,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(CurrencyModel currencyModel,
            CurrencyModel? oldCurrencyModel, bool isUpdate)?
        createCurrency,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CurrencyModel currencyModel,
            CurrencyModel? oldCurrencyModel, bool isUpdate)?
        createCurrency,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateCurrency value) createCurrency,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateCurrency value)? createCurrency,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateCurrency value)? createCurrency,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrencyEventCopyWith<CurrencyEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyEventCopyWith<$Res> {
  factory $CurrencyEventCopyWith(
          CurrencyEvent value, $Res Function(CurrencyEvent) then) =
      _$CurrencyEventCopyWithImpl<$Res>;
  $Res call(
      {CurrencyModel currencyModel,
      CurrencyModel? oldCurrencyModel,
      bool isUpdate});
}

/// @nodoc
class _$CurrencyEventCopyWithImpl<$Res>
    implements $CurrencyEventCopyWith<$Res> {
  _$CurrencyEventCopyWithImpl(this._value, this._then);

  final CurrencyEvent _value;
  // ignore: unused_field
  final $Res Function(CurrencyEvent) _then;

  @override
  $Res call({
    Object? currencyModel = freezed,
    Object? oldCurrencyModel = freezed,
    Object? isUpdate = freezed,
  }) {
    return _then(_value.copyWith(
      currencyModel: currencyModel == freezed
          ? _value.currencyModel
          : currencyModel // ignore: cast_nullable_to_non_nullable
              as CurrencyModel,
      oldCurrencyModel: oldCurrencyModel == freezed
          ? _value.oldCurrencyModel
          : oldCurrencyModel // ignore: cast_nullable_to_non_nullable
              as CurrencyModel?,
      isUpdate: isUpdate == freezed
          ? _value.isUpdate
          : isUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_CreateCurrencyCopyWith<$Res>
    implements $CurrencyEventCopyWith<$Res> {
  factory _$$_CreateCurrencyCopyWith(
          _$_CreateCurrency value, $Res Function(_$_CreateCurrency) then) =
      __$$_CreateCurrencyCopyWithImpl<$Res>;
  @override
  $Res call(
      {CurrencyModel currencyModel,
      CurrencyModel? oldCurrencyModel,
      bool isUpdate});
}

/// @nodoc
class __$$_CreateCurrencyCopyWithImpl<$Res>
    extends _$CurrencyEventCopyWithImpl<$Res>
    implements _$$_CreateCurrencyCopyWith<$Res> {
  __$$_CreateCurrencyCopyWithImpl(
      _$_CreateCurrency _value, $Res Function(_$_CreateCurrency) _then)
      : super(_value, (v) => _then(v as _$_CreateCurrency));

  @override
  _$_CreateCurrency get _value => super._value as _$_CreateCurrency;

  @override
  $Res call({
    Object? currencyModel = freezed,
    Object? oldCurrencyModel = freezed,
    Object? isUpdate = freezed,
  }) {
    return _then(_$_CreateCurrency(
      currencyModel: currencyModel == freezed
          ? _value.currencyModel
          : currencyModel // ignore: cast_nullable_to_non_nullable
              as CurrencyModel,
      oldCurrencyModel: oldCurrencyModel == freezed
          ? _value.oldCurrencyModel
          : oldCurrencyModel // ignore: cast_nullable_to_non_nullable
              as CurrencyModel?,
      isUpdate: isUpdate == freezed
          ? _value.isUpdate
          : isUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CreateCurrency implements _CreateCurrency {
  _$_CreateCurrency(
      {required this.currencyModel,
      this.oldCurrencyModel,
      required this.isUpdate});

  @override
  final CurrencyModel currencyModel;
  @override
  final CurrencyModel? oldCurrencyModel;
  @override
  final bool isUpdate;

  @override
  String toString() {
    return 'CurrencyEvent.createCurrency(currencyModel: $currencyModel, oldCurrencyModel: $oldCurrencyModel, isUpdate: $isUpdate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateCurrency &&
            const DeepCollectionEquality()
                .equals(other.currencyModel, currencyModel) &&
            const DeepCollectionEquality()
                .equals(other.oldCurrencyModel, oldCurrencyModel) &&
            const DeepCollectionEquality().equals(other.isUpdate, isUpdate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currencyModel),
      const DeepCollectionEquality().hash(oldCurrencyModel),
      const DeepCollectionEquality().hash(isUpdate));

  @JsonKey(ignore: true)
  @override
  _$$_CreateCurrencyCopyWith<_$_CreateCurrency> get copyWith =>
      __$$_CreateCurrencyCopyWithImpl<_$_CreateCurrency>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CurrencyModel currencyModel,
            CurrencyModel? oldCurrencyModel, bool isUpdate)
        createCurrency,
  }) {
    return createCurrency(currencyModel, oldCurrencyModel, isUpdate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(CurrencyModel currencyModel,
            CurrencyModel? oldCurrencyModel, bool isUpdate)?
        createCurrency,
  }) {
    return createCurrency?.call(currencyModel, oldCurrencyModel, isUpdate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CurrencyModel currencyModel,
            CurrencyModel? oldCurrencyModel, bool isUpdate)?
        createCurrency,
    required TResult orElse(),
  }) {
    if (createCurrency != null) {
      return createCurrency(currencyModel, oldCurrencyModel, isUpdate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateCurrency value) createCurrency,
  }) {
    return createCurrency(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateCurrency value)? createCurrency,
  }) {
    return createCurrency?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateCurrency value)? createCurrency,
    required TResult orElse(),
  }) {
    if (createCurrency != null) {
      return createCurrency(this);
    }
    return orElse();
  }
}

abstract class _CreateCurrency implements CurrencyEvent {
  factory _CreateCurrency(
      {required final CurrencyModel currencyModel,
      final CurrencyModel? oldCurrencyModel,
      required final bool isUpdate}) = _$_CreateCurrency;

  @override
  CurrencyModel get currencyModel;
  @override
  CurrencyModel? get oldCurrencyModel;
  @override
  bool get isUpdate;
  @override
  @JsonKey(ignore: true)
  _$$_CreateCurrencyCopyWith<_$_CreateCurrency> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CurrencyState {
  bool get successCreateCurrency => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrencyStateCopyWith<CurrencyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyStateCopyWith<$Res> {
  factory $CurrencyStateCopyWith(
          CurrencyState value, $Res Function(CurrencyState) then) =
      _$CurrencyStateCopyWithImpl<$Res>;
  $Res call({bool successCreateCurrency, bool error});
}

/// @nodoc
class _$CurrencyStateCopyWithImpl<$Res>
    implements $CurrencyStateCopyWith<$Res> {
  _$CurrencyStateCopyWithImpl(this._value, this._then);

  final CurrencyState _value;
  // ignore: unused_field
  final $Res Function(CurrencyState) _then;

  @override
  $Res call({
    Object? successCreateCurrency = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      successCreateCurrency: successCreateCurrency == freezed
          ? _value.successCreateCurrency
          : successCreateCurrency // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_CurrencyStateCopyWith<$Res>
    implements $CurrencyStateCopyWith<$Res> {
  factory _$$_CurrencyStateCopyWith(
          _$_CurrencyState value, $Res Function(_$_CurrencyState) then) =
      __$$_CurrencyStateCopyWithImpl<$Res>;
  @override
  $Res call({bool successCreateCurrency, bool error});
}

/// @nodoc
class __$$_CurrencyStateCopyWithImpl<$Res>
    extends _$CurrencyStateCopyWithImpl<$Res>
    implements _$$_CurrencyStateCopyWith<$Res> {
  __$$_CurrencyStateCopyWithImpl(
      _$_CurrencyState _value, $Res Function(_$_CurrencyState) _then)
      : super(_value, (v) => _then(v as _$_CurrencyState));

  @override
  _$_CurrencyState get _value => super._value as _$_CurrencyState;

  @override
  $Res call({
    Object? successCreateCurrency = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_CurrencyState(
      successCreateCurrency: successCreateCurrency == freezed
          ? _value.successCreateCurrency
          : successCreateCurrency // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CurrencyState implements _CurrencyState {
  const _$_CurrencyState(
      {this.successCreateCurrency = false, this.error = false});

  @override
  @JsonKey()
  final bool successCreateCurrency;
  @override
  @JsonKey()
  final bool error;

  @override
  String toString() {
    return 'CurrencyState(successCreateCurrency: $successCreateCurrency, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrencyState &&
            const DeepCollectionEquality()
                .equals(other.successCreateCurrency, successCreateCurrency) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(successCreateCurrency),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_CurrencyStateCopyWith<_$_CurrencyState> get copyWith =>
      __$$_CurrencyStateCopyWithImpl<_$_CurrencyState>(this, _$identity);
}

abstract class _CurrencyState implements CurrencyState {
  const factory _CurrencyState(
      {final bool successCreateCurrency, final bool error}) = _$_CurrencyState;

  @override
  bool get successCreateCurrency;
  @override
  bool get error;
  @override
  @JsonKey(ignore: true)
  _$$_CurrencyStateCopyWith<_$_CurrencyState> get copyWith =>
      throw _privateConstructorUsedError;
}
