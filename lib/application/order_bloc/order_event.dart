part of 'order_bloc.dart';

@freezed
abstract class OrderEvent with _$OrderEvent {
  factory OrderEvent.createOrder(
      {required bool isPickup}) = _CreateOrder;

  factory OrderEvent.getMyOrders(
      {required String uid}) = _GetMyOrders;

  factory OrderEvent.createOrderStatus(
      {required OrderStatusModel orderStatusModel}) = _CreateOrderStatus;
}
