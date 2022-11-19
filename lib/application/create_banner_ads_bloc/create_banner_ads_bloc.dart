import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:universal_shop/infrastructure/models/banner_ads/banner_ads_model.dart';
import 'package:universal_shop/infrastructure/models/user/user_model.dart';
import 'package:universal_shop/infrastructure/services/image_service.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';
import 'package:wechat_camera_picker/wechat_camera_picker.dart';

import '../../infrastructure/repositories/banner_repo.dart';

part 'create_banner_ads_bloc.freezed.dart';

part 'create_banner_ads_state.dart';

part 'create_banner_ads_event.dart';

class CreateBannerAdsBloc extends Bloc<CreateBannerAdsEvent, CreateBannerAdsState> {
final BannerRepo bannerRepo;

  CreateBannerAdsBloc(this.bannerRepo) : super(const _CreateBannerAdsState()) {
    on<_CreateBanner>(_createBanner);
    on<_ImagePick>(_imagePick);
    on<_SetImage>(_setImage);
    on<_GetBanners>(_getBanners);
  }


Future<void> _getBanners(
    _GetBanners value,
    Emitter<CreateBannerAdsState> emit,
    )async{
  List<BannerAdsModel>? banners = await  bannerRepo.getBanners();
  emit(state.copyWith(banners: banners, isInitial: false));
}

  Future<void> _createBanner(
    _CreateBanner value,
    Emitter<CreateBannerAdsState> emit,
  ) async {
    if ((value.bannerAdsModel.assetEntity != null) ||
        (value.bannerAdsModel.imageUrl != null &&
            value.bannerAdsModel.imageUrl!.isNotEmpty)) {
      emit(state.copyWith(emptyImage: false));
    } else {
      emit(state.copyWith(emptyImage: true));
    }
    if (value.bannerAdsModel.link != null &&
        value.bannerAdsModel.link!.isNotEmpty) {
      emit(state.copyWith(emptyTitle: false));
    } else {
      emit(state.copyWith(emptyTitle: true));
    }

    if (!state.emptyTitle && !state.emptyImage) {
      emit(state.copyWith(successCreateBadge: false));
    bool isCreate = await  bannerRepo.createBanner(value.bannerAdsModel);
      emit(state.copyWith(successCreateBadge: isCreate));
    }
  }

  Future<void> _imagePick(
    _ImagePick value,
    Emitter<CreateBannerAdsState> emit,
  ) async {
    List<AssetEntity> assets = await ImageService.showPicker(value.context,
            aspectRatioPresets: [CropAspectRatioPreset.ratio16x9], crop: true) ??
       (state.asset==null ? [] : [state.asset!]);
    if(assets.isNotEmpty) {
      emit(state.copyWith(
          asset: assets.first,
          emptyImage: assets.isEmpty && value.photoUrl == null));
    }
  }

  Future<void>   _setImage(
    _SetImage value,
    Emitter<CreateBannerAdsState> emit,
  ) async {
    emit(state.copyWith(asset: value.assets.isEmpty ? null : value.assets.first, emptyImage: false));
  }
}
