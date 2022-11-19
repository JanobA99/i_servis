part of 'category_bloc.dart';

@freezed
abstract class CategoryEvent with _$CategoryEvent {
  factory CategoryEvent.imagePick({
    required BuildContext context,
    required String? photoUrl
  }) = _ImagePick;

  factory CategoryEvent.createCategory({required CategoryOrInnerSubcategoryOrBadgeModel categoryModel, required String? parentUid,  CategoryOrInnerSubcategoryOrBadgeModel? oldCategoryModel,}) =
      _CreateCategory;

  factory CategoryEvent.setImage({
    required List<AssetEntity> assets,
    required String? photoUrl
  }) = _SetImage;

}
