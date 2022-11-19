import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:universal_shop/infrastructure/models/category/category_model.dart';
import 'package:universal_shop/infrastructure/models/user/user_model.dart';
import 'package:universal_shop/infrastructure/services/image_service.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';
import 'package:wechat_camera_picker/wechat_camera_picker.dart';

import '../../infrastructure/repositories/badge_repo.dart';

part 'badge_bloc.freezed.dart';

part 'badge_event.dart';

part 'badge_state.dart';

class BadgeBloc extends Bloc<BadgeEvent, BadgeState> {
  final BadgeRepo badgeRepo;

  BadgeBloc({required this.badgeRepo}) : super(const _BadgeState()) {
    on<_CreateBadge>(_createBadge);
    on<_ImagePick>(_imagePick);
    on<_SetImage>(_setImage);
  }

  Future<void> _createBadge(
    _CreateBadge value,
    Emitter<BadgeState> emit,
  ) async {
    if ((value.badgeModel.assets != null &&
            value.badgeModel.assets!.isNotEmpty) ||
        (value.badgeModel.photoUrl != null &&
            value.badgeModel.photoUrl!.isNotEmpty)) {
      emit(state.copyWith(emptyImage: false));
    } else {
      emit(state.copyWith(emptyImage: true));
    }
    if (value.badgeModel.title != null &&
        value.badgeModel.title!.isNotEmpty) {
      emit(state.copyWith(emptyTitle: false));
    } else {
      emit(state.copyWith(emptyTitle: true));
    }

    if (!state.emptyTitle && !state.emptyImage) {
      emit(state.copyWith(successCreateBadge: false));
    bool isCreate = await  badgeRepo.createBadge(value.badgeModel);

      emit(state.copyWith(successCreateBadge: isCreate));
    }
  }

  Future<void> _imagePick(
    _ImagePick value,
    Emitter<BadgeState> emit,
  ) async {
    List<AssetEntity> assets = await ImageService.showPicker(value.context,
            aspectRatioPresets: [CropAspectRatioPreset.square], crop: false) ??
        state.assets;
    emit(state.copyWith(
        assets: assets, emptyImage: assets.isEmpty && value.photoUrl == null));
  }

  Future<void> _setImage(
    _SetImage value,
    Emitter<BadgeState> emit,
  ) async {
    emit(state.copyWith(assets: value.assets, emptyImage: false));
  }
}
