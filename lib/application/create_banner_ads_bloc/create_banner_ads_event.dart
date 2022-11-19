part of 'create_banner_ads_bloc.dart';

@freezed
abstract class CreateBannerAdsEvent with _$CreateBannerAdsEvent {
  factory CreateBannerAdsEvent.imagePick({
    required BuildContext context,
    required String? photoUrl
  }) = _ImagePick;

  factory CreateBannerAdsEvent.createBanner({
    required BannerAdsModel bannerAdsModel,
  }) = _CreateBanner;

  factory CreateBannerAdsEvent.setImage(
      {required List<AssetEntity> assets,
      required String? photoUrl}) = _SetImage;

  factory CreateBannerAdsEvent.getBanners() = _GetBanners;

}
