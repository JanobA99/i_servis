import 'package:bloc/bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:universal_shop/infrastructure/models/currency/currency_model.dart';

import '../../domain/core/hive_keys.dart';
import '../../infrastructure/repositories/currency_repo.dart';

part 'currency_bloc.freezed.dart';

part 'currency_event.dart';

part 'currency_state.dart';

class CurrencyBloc extends Bloc<CurrencyEvent, CurrencyState> {
  final CurrencyRepo currencyRepo;

  CurrencyBloc(this.currencyRepo) : super(const _CurrencyState()) {
    on<_CreateCurrency>(_createCurrency);
  }

  Future<void> _createCurrency(
    _CreateCurrency value,
    Emitter<CurrencyState> emit,
  ) async {
      emit(state.copyWith(successCreateCurrency: false));
      EasyLoading.show();
       bool isCreate = await currencyRepo.createCurrency(value.currencyModel);
       emit(state.copyWith(successCreateCurrency: isCreate));
  }

  void setCurrencyToBox(CurrencyModel? currency) {
    if (currency != null) {
      Box<CurrencyModel> box =
      Hive.box<CurrencyModel>(HiveKeys.currencies);
      box.put(currency.uid ?? "", currency);
    }
  }

}
