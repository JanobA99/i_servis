import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:universal_shop/infrastructure/services/image_service.dart';
import 'package:universal_shop/infrastructure/models/category/category_model.dart';
import 'package:universal_shop/infrastructure/models/user/user_model.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';
import 'package:wechat_camera_picker/wechat_camera_picker.dart';

import '../../infrastructure/repositories/category_repo.dart';

part 'category_bloc.freezed.dart';

part 'category_event.dart';

part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final CategoryRepo categoryRepo;

  CategoryBloc({required this.categoryRepo}) : super(const _CategoryState()) {
    on<_CreateCategory>(_createCategory);
    on<_ImagePick>(_imagePick);
    on<_SetImage>(_setImage);
  }

  Future<void> _createCategory(
    _CreateCategory value,
    Emitter<CategoryState> emit,
  ) async {
    if ((value.categoryModel.assets != null &&
            value.categoryModel.assets!.isNotEmpty) ||
        (value.categoryModel.photoUrl != null &&
            value.categoryModel.photoUrl!.isNotEmpty)) {
      emit(state.copyWith(emptyImage: false));
    } else {
      emit(state.copyWith(emptyImage: true));
    }
    if (value.categoryModel.title != null &&
        value.categoryModel.title!.isNotEmpty) {
      emit(state.copyWith(emptyTitle: false));
    } else {
      emit(state.copyWith(emptyTitle: true));
    }

    if (!state.emptyTitle && !state.emptyImage) {
      emit(state.copyWith(successCreateCategory: false));
      EasyLoading.show();
    String result = await categoryRepo.createCategory(categoryOrSubcategory: value.categoryModel, parentUid: value.parentUid, oldCategoryModel: value.oldCategoryModel);
      emit(state.copyWith(
        successCreateCategory: result == "success".tr(),
        assets: [],
      ));
    }
  }

  Future<void> _imagePick(
    _ImagePick value,
    Emitter<CategoryState> emit,
  ) async {
    List<AssetEntity> assets = await ImageService.showPicker(value.context,
            aspectRatioPresets: [CropAspectRatioPreset.square], crop: false) ??
        state.assets;
    emit(state.copyWith(
        assets: assets,
        emptyImage: assets.isEmpty && value.photoUrl == null));
  }

  Future<void> _setImage(
    _SetImage value,
    Emitter<CategoryState> emit,
  ) async {
    emit(state.copyWith(assets: value.assets, emptyImage: false));
  }
}
