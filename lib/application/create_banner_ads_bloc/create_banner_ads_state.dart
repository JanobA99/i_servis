part of 'create_banner_ads_bloc.dart';

@freezed
abstract class CreateBannerAdsState with _$CreateBannerAdsState {
  const factory CreateBannerAdsState({
    @Default(null) UserModel? userModel,
    @Default(null) AssetEntity? asset,
    @Default(false) bool emptyImage,
    @Default(false) bool emptyTitle,
    @Default(false) bool successCreateBadge,
    @Default(false) bool error,
    @Default([]) List<BannerAdsModel>? banners,
  @Default(true) bool isInitial,
  }) = _CreateBannerAdsState;
}
