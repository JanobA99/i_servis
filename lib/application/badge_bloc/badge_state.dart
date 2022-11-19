part of 'badge_bloc.dart';

@freezed
abstract class BadgeState with _$BadgeState {
  const factory BadgeState({
    @Default(null) UserModel? userModel,
    @Default([]) List<AssetEntity> assets,
    @Default(false) bool emptyImage,
    @Default(false) bool emptyTitle,
    @Default(false) bool successCreateBadge,
    @Default(false) bool noMoreData,
    @Default(false) bool error,
  }) = _BadgeState;
}
