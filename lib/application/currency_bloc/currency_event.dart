part of 'currency_bloc.dart';

@freezed
abstract class CurrencyEvent with _$CurrencyEvent {
  factory CurrencyEvent.createCurrency({required CurrencyModel currencyModel,  CurrencyModel? oldCurrencyModel, required bool isUpdate}) =
      _CreateCurrency;

}
