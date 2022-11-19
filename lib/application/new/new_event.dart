part of 'new_bloc.dart';

@freezed
abstract class NewEvent with _$NewEvent {
  factory NewEvent.signUp(
      {required AuthModel login, required AssetEntity images}) = _SignUp;
}
