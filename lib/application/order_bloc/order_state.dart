part of 'order_bloc.dart';

@freezed
abstract class OrderState with _$OrderState {
  const factory OrderState({
    @Default(false) bool orderCreateSuccess,
  }) = _OrderState;
}
