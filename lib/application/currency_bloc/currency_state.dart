part of 'currency_bloc.dart';

@freezed
abstract class CurrencyState with _$CurrencyState{
  const factory CurrencyState({
    @Default(false) bool successCreateCurrency,
    @Default(false) bool error,
  }) = _CurrencyState;
}
