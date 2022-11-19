part of 'category_bloc.dart';

@freezed
abstract class CategoryState with _$CategoryState {
  const factory CategoryState({
    @Default(null) UserModel? userModel,
    @Default([]) List<AssetEntity> assets,
    @Default(false) bool emptyImage,
    @Default(false) bool emptyTitle,
    @Default(false) bool successCreateCategory,
    @Default(false) bool error,
  }) = _CategoryState;
}
