part of 'badge_bloc.dart';

@freezed
abstract class BadgeEvent with _$BadgeEvent {
  factory BadgeEvent.imagePick({
    required BuildContext context,
    required String? photoUrl
  }) = _ImagePick;

  factory BadgeEvent.createBadge({
    required CategoryOrInnerSubcategoryOrBadgeModel badgeModel,
    CategoryOrInnerSubcategoryOrBadgeModel? oldBadgeModel,
  }) = _CreateBadge;

  factory BadgeEvent.setImage(
      {required List<AssetEntity> assets,
      required String? photoUrl}) = _SetImage;

}
