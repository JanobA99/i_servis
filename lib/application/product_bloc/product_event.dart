part of 'product_bloc.dart';

@freezed
abstract class ProductEvent with _$ProductEvent {
  factory ProductEvent.signUp(
      {required AuthModel login, required AssetEntity images}) = _SignUp;

  factory ProductEvent.imagePick(
      {required BuildContext context, required bool addImage}) = _ImagePick;

  factory ProductEvent.createProduct({required ProductDetailModel product}) =
      _CreateProduct;

  factory ProductEvent.removeImage({required AssetEntity assetEntity}) =
      _RemoveImage;

  factory ProductEvent.getProductWithSort(
      {required bool firstPage,
      required Object query,
      required String field,
      bool? isSearch,
      bool? isList
      }) = _GetProductWithSort;


  factory ProductEvent.searchProductsStart() = _SearchProductsStart;

  factory ProductEvent.createComponent(
      {required ComponentModel componentModel}) = _CreateComponent;

  factory ProductEvent.getComponent() = _GetComponent;

  factory ProductEvent.createCurrency() = _CreateCurrency;

  factory ProductEvent.initialImage({required List<AssetEntity> assetEntity}) =
      _InitialImage;


}
