part of 'new_bloc.dart';

@freezed
abstract class NewState with _$NewState {
  const factory NewState({
    @Default(null) UserModel? userModel,
  }) = _NewState;
}
