// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPickup) createOrder,
    required TResult Function(String uid) getMyOrders,
    required TResult Function(OrderStatusModel orderStatusModel)
        createOrderStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isPickup)? createOrder,
    TResult Function(String uid)? getMyOrders,
    TResult Function(OrderStatusModel orderStatusModel)? createOrderStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPickup)? createOrder,
    TResult Function(String uid)? getMyOrders,
    TResult Function(OrderStatusModel orderStatusModel)? createOrderStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateOrder value) createOrder,
    required TResult Function(_GetMyOrders value) getMyOrders,
    required TResult Function(_CreateOrderStatus value) createOrderStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateOrder value)? createOrder,
    TResult Function(_GetMyOrders value)? getMyOrders,
    TResult Function(_CreateOrderStatus value)? createOrderStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateOrder value)? createOrder,
    TResult Function(_GetMyOrders value)? getMyOrders,
    TResult Function(_CreateOrderStatus value)? createOrderStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEventCopyWith<$Res> {
  factory $OrderEventCopyWith(
          OrderEvent value, $Res Function(OrderEvent) then) =
      _$OrderEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OrderEventCopyWithImpl<$Res> implements $OrderEventCopyWith<$Res> {
  _$OrderEventCopyWithImpl(this._value, this._then);

  final OrderEvent _value;
  // ignore: unused_field
  final $Res Function(OrderEvent) _then;
}

/// @nodoc
abstract class _$$_CreateOrderCopyWith<$Res> {
  factory _$$_CreateOrderCopyWith(
          _$_CreateOrder value, $Res Function(_$_CreateOrder) then) =
      __$$_CreateOrderCopyWithImpl<$Res>;
  $Res call({bool isPickup});
}

/// @nodoc
class __$$_CreateOrderCopyWithImpl<$Res> extends _$OrderEventCopyWithImpl<$Res>
    implements _$$_CreateOrderCopyWith<$Res> {
  __$$_CreateOrderCopyWithImpl(
      _$_CreateOrder _value, $Res Function(_$_CreateOrder) _then)
      : super(_value, (v) => _then(v as _$_CreateOrder));

  @override
  _$_CreateOrder get _value => super._value as _$_CreateOrder;

  @override
  $Res call({
    Object? isPickup = freezed,
  }) {
    return _then(_$_CreateOrder(
      isPickup: isPickup == freezed
          ? _value.isPickup
          : isPickup // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CreateOrder implements _CreateOrder {
  _$_CreateOrder({required this.isPickup});

  @override
  final bool isPickup;

  @override
  String toString() {
    return 'OrderEvent.createOrder(isPickup: $isPickup)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateOrder &&
            const DeepCollectionEquality().equals(other.isPickup, isPickup));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isPickup));

  @JsonKey(ignore: true)
  @override
  _$$_CreateOrderCopyWith<_$_CreateOrder> get copyWith =>
      __$$_CreateOrderCopyWithImpl<_$_CreateOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPickup) createOrder,
    required TResult Function(String uid) getMyOrders,
    required TResult Function(OrderStatusModel orderStatusModel)
        createOrderStatus,
  }) {
    return createOrder(isPickup);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isPickup)? createOrder,
    TResult Function(String uid)? getMyOrders,
    TResult Function(OrderStatusModel orderStatusModel)? createOrderStatus,
  }) {
    return createOrder?.call(isPickup);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPickup)? createOrder,
    TResult Function(String uid)? getMyOrders,
    TResult Function(OrderStatusModel orderStatusModel)? createOrderStatus,
    required TResult orElse(),
  }) {
    if (createOrder != null) {
      return createOrder(isPickup);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateOrder value) createOrder,
    required TResult Function(_GetMyOrders value) getMyOrders,
    required TResult Function(_CreateOrderStatus value) createOrderStatus,
  }) {
    return createOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateOrder value)? createOrder,
    TResult Function(_GetMyOrders value)? getMyOrders,
    TResult Function(_CreateOrderStatus value)? createOrderStatus,
  }) {
    return createOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateOrder value)? createOrder,
    TResult Function(_GetMyOrders value)? getMyOrders,
    TResult Function(_CreateOrderStatus value)? createOrderStatus,
    required TResult orElse(),
  }) {
    if (createOrder != null) {
      return createOrder(this);
    }
    return orElse();
  }
}

abstract class _CreateOrder implements OrderEvent {
  factory _CreateOrder({required final bool isPickup}) = _$_CreateOrder;

  bool get isPickup;
  @JsonKey(ignore: true)
  _$$_CreateOrderCopyWith<_$_CreateOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetMyOrdersCopyWith<$Res> {
  factory _$$_GetMyOrdersCopyWith(
          _$_GetMyOrders value, $Res Function(_$_GetMyOrders) then) =
      __$$_GetMyOrdersCopyWithImpl<$Res>;
  $Res call({String uid});
}

/// @nodoc
class __$$_GetMyOrdersCopyWithImpl<$Res> extends _$OrderEventCopyWithImpl<$Res>
    implements _$$_GetMyOrdersCopyWith<$Res> {
  __$$_GetMyOrdersCopyWithImpl(
      _$_GetMyOrders _value, $Res Function(_$_GetMyOrders) _then)
      : super(_value, (v) => _then(v as _$_GetMyOrders));

  @override
  _$_GetMyOrders get _value => super._value as _$_GetMyOrders;

  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(_$_GetMyOrders(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetMyOrders implements _GetMyOrders {
  _$_GetMyOrders({required this.uid});

  @override
  final String uid;

  @override
  String toString() {
    return 'OrderEvent.getMyOrders(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetMyOrders &&
            const DeepCollectionEquality().equals(other.uid, uid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(uid));

  @JsonKey(ignore: true)
  @override
  _$$_GetMyOrdersCopyWith<_$_GetMyOrders> get copyWith =>
      __$$_GetMyOrdersCopyWithImpl<_$_GetMyOrders>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPickup) createOrder,
    required TResult Function(String uid) getMyOrders,
    required TResult Function(OrderStatusModel orderStatusModel)
        createOrderStatus,
  }) {
    return getMyOrders(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isPickup)? createOrder,
    TResult Function(String uid)? getMyOrders,
    TResult Function(OrderStatusModel orderStatusModel)? createOrderStatus,
  }) {
    return getMyOrders?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPickup)? createOrder,
    TResult Function(String uid)? getMyOrders,
    TResult Function(OrderStatusModel orderStatusModel)? createOrderStatus,
    required TResult orElse(),
  }) {
    if (getMyOrders != null) {
      return getMyOrders(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateOrder value) createOrder,
    required TResult Function(_GetMyOrders value) getMyOrders,
    required TResult Function(_CreateOrderStatus value) createOrderStatus,
  }) {
    return getMyOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateOrder value)? createOrder,
    TResult Function(_GetMyOrders value)? getMyOrders,
    TResult Function(_CreateOrderStatus value)? createOrderStatus,
  }) {
    return getMyOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateOrder value)? createOrder,
    TResult Function(_GetMyOrders value)? getMyOrders,
    TResult Function(_CreateOrderStatus value)? createOrderStatus,
    required TResult orElse(),
  }) {
    if (getMyOrders != null) {
      return getMyOrders(this);
    }
    return orElse();
  }
}

abstract class _GetMyOrders implements OrderEvent {
  factory _GetMyOrders({required final String uid}) = _$_GetMyOrders;

  String get uid;
  @JsonKey(ignore: true)
  _$$_GetMyOrdersCopyWith<_$_GetMyOrders> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CreateOrderStatusCopyWith<$Res> {
  factory _$$_CreateOrderStatusCopyWith(_$_CreateOrderStatus value,
          $Res Function(_$_CreateOrderStatus) then) =
      __$$_CreateOrderStatusCopyWithImpl<$Res>;
  $Res call({OrderStatusModel orderStatusModel});
}

/// @nodoc
class __$$_CreateOrderStatusCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res>
    implements _$$_CreateOrderStatusCopyWith<$Res> {
  __$$_CreateOrderStatusCopyWithImpl(
      _$_CreateOrderStatus _value, $Res Function(_$_CreateOrderStatus) _then)
      : super(_value, (v) => _then(v as _$_CreateOrderStatus));

  @override
  _$_CreateOrderStatus get _value => super._value as _$_CreateOrderStatus;

  @override
  $Res call({
    Object? orderStatusModel = freezed,
  }) {
    return _then(_$_CreateOrderStatus(
      orderStatusModel: orderStatusModel == freezed
          ? _value.orderStatusModel
          : orderStatusModel // ignore: cast_nullable_to_non_nullable
              as OrderStatusModel,
    ));
  }
}

/// @nodoc

class _$_CreateOrderStatus implements _CreateOrderStatus {
  _$_CreateOrderStatus({required this.orderStatusModel});

  @override
  final OrderStatusModel orderStatusModel;

  @override
  String toString() {
    return 'OrderEvent.createOrderStatus(orderStatusModel: $orderStatusModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateOrderStatus &&
            const DeepCollectionEquality()
                .equals(other.orderStatusModel, orderStatusModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(orderStatusModel));

  @JsonKey(ignore: true)
  @override
  _$$_CreateOrderStatusCopyWith<_$_CreateOrderStatus> get copyWith =>
      __$$_CreateOrderStatusCopyWithImpl<_$_CreateOrderStatus>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPickup) createOrder,
    required TResult Function(String uid) getMyOrders,
    required TResult Function(OrderStatusModel orderStatusModel)
        createOrderStatus,
  }) {
    return createOrderStatus(orderStatusModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isPickup)? createOrder,
    TResult Function(String uid)? getMyOrders,
    TResult Function(OrderStatusModel orderStatusModel)? createOrderStatus,
  }) {
    return createOrderStatus?.call(orderStatusModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPickup)? createOrder,
    TResult Function(String uid)? getMyOrders,
    TResult Function(OrderStatusModel orderStatusModel)? createOrderStatus,
    required TResult orElse(),
  }) {
    if (createOrderStatus != null) {
      return createOrderStatus(orderStatusModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateOrder value) createOrder,
    required TResult Function(_GetMyOrders value) getMyOrders,
    required TResult Function(_CreateOrderStatus value) createOrderStatus,
  }) {
    return createOrderStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateOrder value)? createOrder,
    TResult Function(_GetMyOrders value)? getMyOrders,
    TResult Function(_CreateOrderStatus value)? createOrderStatus,
  }) {
    return createOrderStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateOrder value)? createOrder,
    TResult Function(_GetMyOrders value)? getMyOrders,
    TResult Function(_CreateOrderStatus value)? createOrderStatus,
    required TResult orElse(),
  }) {
    if (createOrderStatus != null) {
      return createOrderStatus(this);
    }
    return orElse();
  }
}

abstract class _CreateOrderStatus implements OrderEvent {
  factory _CreateOrderStatus(
          {required final OrderStatusModel orderStatusModel}) =
      _$_CreateOrderStatus;

  OrderStatusModel get orderStatusModel;
  @JsonKey(ignore: true)
  _$$_CreateOrderStatusCopyWith<_$_CreateOrderStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrderState {
  bool get orderCreateSuccess => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderStateCopyWith<OrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStateCopyWith<$Res> {
  factory $OrderStateCopyWith(
          OrderState value, $Res Function(OrderState) then) =
      _$OrderStateCopyWithImpl<$Res>;
  $Res call({bool orderCreateSuccess});
}

/// @nodoc
class _$OrderStateCopyWithImpl<$Res> implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._value, this._then);

  final OrderState _value;
  // ignore: unused_field
  final $Res Function(OrderState) _then;

  @override
  $Res call({
    Object? orderCreateSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      orderCreateSuccess: orderCreateSuccess == freezed
          ? _value.orderCreateSuccess
          : orderCreateSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_OrderStateCopyWith<$Res>
    implements $OrderStateCopyWith<$Res> {
  factory _$$_OrderStateCopyWith(
          _$_OrderState value, $Res Function(_$_OrderState) then) =
      __$$_OrderStateCopyWithImpl<$Res>;
  @override
  $Res call({bool orderCreateSuccess});
}

/// @nodoc
class __$$_OrderStateCopyWithImpl<$Res> extends _$OrderStateCopyWithImpl<$Res>
    implements _$$_OrderStateCopyWith<$Res> {
  __$$_OrderStateCopyWithImpl(
      _$_OrderState _value, $Res Function(_$_OrderState) _then)
      : super(_value, (v) => _then(v as _$_OrderState));

  @override
  _$_OrderState get _value => super._value as _$_OrderState;

  @override
  $Res call({
    Object? orderCreateSuccess = freezed,
  }) {
    return _then(_$_OrderState(
      orderCreateSuccess: orderCreateSuccess == freezed
          ? _value.orderCreateSuccess
          : orderCreateSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_OrderState implements _OrderState {
  const _$_OrderState({this.orderCreateSuccess = false});

  @override
  @JsonKey()
  final bool orderCreateSuccess;

  @override
  String toString() {
    return 'OrderState(orderCreateSuccess: $orderCreateSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderState &&
            const DeepCollectionEquality()
                .equals(other.orderCreateSuccess, orderCreateSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(orderCreateSuccess));

  @JsonKey(ignore: true)
  @override
  _$$_OrderStateCopyWith<_$_OrderState> get copyWith =>
      __$$_OrderStateCopyWithImpl<_$_OrderState>(this, _$identity);
}

abstract class _OrderState implements OrderState {
  const factory _OrderState({final bool orderCreateSuccess}) = _$_OrderState;

  @override
  bool get orderCreateSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_OrderStateCopyWith<_$_OrderState> get copyWith =>
      throw _privateConstructorUsedError;
}
