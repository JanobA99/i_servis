
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:universal_shop/infrastructure/models/order/order_model.dart';

import '../../infrastructure/repositories/order_repo.dart';

part 'order_bloc.freezed.dart';

part 'order_event.dart';

part 'order_state.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
final OrderRepo orderRepo;
  OrderBloc({required this.orderRepo}) : super(const _OrderState()) {
    on<_CreateOrder>(_createOrder);
    on<_GetMyOrders>(_getMyOrders);
    on<_CreateOrderStatus>(_createOrderStatus);

  }

  Future<void> _createOrder(
      _CreateOrder login,
      Emitter<OrderState> emit,
      ) async {

  }


Future<void> _createOrderStatus(
    _CreateOrderStatus orderStatus,
    Emitter<OrderState> emit,
    ) async {
  emit(state.copyWith(orderCreateSuccess: false));
 bool isSuccess = await orderRepo.createOrderStatus(orderStatusModel: orderStatus.orderStatusModel);
 emit(state.copyWith(orderCreateSuccess: isSuccess));
}

Future<void> _getMyOrders(
      _GetMyOrders orders,
      Emitter<OrderState> emit,
      ) async {
await orderRepo.getMyOrders(orders.uid);
  }


}
