part of 'market_bloc.dart';

@freezed
abstract class MarketState with _$MarketState {
  const factory MarketState({
    @Default(null) UserModel? userModel,
    @Default([]) List<AssetEntity> assets,
    @Default(false) bool emptyImage,
    @Default(false) bool emptyDesc,
    @Default(false) bool emptyTags,
    @Default(false) bool emptyTitle,
    @Default(false) bool emptyCategories,
    @Default(false) bool success,
    @Default([]) List<MarketModel> markets,
    @Default([])  List<DocumentSnapshot> allDocumentList,
    @Default(false) bool noMoreData,
    @Default(false) bool error,
    @Default([]) List<MarketModel> searchMarkets,
    @Default(false) bool searching,
    @Default(false) bool deleteImage,
    @Default(true) bool isInitial,
    @Default([]) List<MarketModel> myMarkets,
  }) = _MarketState;
}
