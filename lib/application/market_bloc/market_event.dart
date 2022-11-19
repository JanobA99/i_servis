part of 'market_bloc.dart';

@freezed
abstract class MarketEvent with _$MarketEvent {
  factory MarketEvent.signUp(
      {required AuthModel login, required AssetEntity images}) = _SignUp;
  factory MarketEvent.imagePick({
    required BuildContext context,
    required bool addImage
  }) = _ImagePick;

  factory MarketEvent.createMarket(
      {required MarketModel market}) = _CreateMarket;

  factory MarketEvent.removeImage(
      {required AssetEntity assetEntity}) = _RemoveImage;

  factory MarketEvent.getMarkets({required bool firstPage}) = _GetMarkets;

  factory MarketEvent.searchMarket({required String text}) = _SearchMarket;

  factory MarketEvent.searchMarketStart() = _SearchMarketStart;

  factory MarketEvent.getMyMarkets({ required String uid}) = _GetMyMarkets;
}
