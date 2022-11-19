part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @Default(false) bool isEmailValid,
    @Default(false) bool isPasswordValid,
    @Default(false) bool isUserNameValid,
    @Default(false) bool navigateToHome,
    @Default(false) bool navigatorPop,
    @Default(false) bool proceedToVerifyCode,
    @Default(null) AssetEntity? assetEntity,

    @Default(false) bool signOut,
    @Default(null) UserModel? userModel,
    @Default(0) int tabBarIndex,
    @Default(null) AssetEntity? profileAssetEntity,
  }) = _SignInState;
}
