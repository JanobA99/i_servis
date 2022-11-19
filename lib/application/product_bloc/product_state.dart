part of 'product_bloc.dart';

@freezed
abstract class ProductState with _$ProductState {
  const factory ProductState({
    @Default(null) UserModel? userModel,
    @Default([]) List<AssetEntity> assets,
    @Default(false) bool emptyImage,
    @Default(false) bool emptyCategories,
    @Default(false) bool success,
    @Default([])  List<DocumentSnapshot> allDocumentList,
    @Default(false) bool noMoreData,
    @Default(false) bool error,
    @Default(false) bool searching,
    @Default(false) bool deleteImage,
    @Default(false) bool successCreateComponent,
    @Default(false) bool emptyUnit,
    @Default([]) List<ComponentModel> components,
    @Default([]) List<ProductDetailModel> products,
    @Default([])  List<DocumentSnapshot> searchDocumentList,
  @Default([]) List<ProductDetailModel> searchProducts,
  @Default(true) bool isInitial,
  }) = _ProductState;
}
