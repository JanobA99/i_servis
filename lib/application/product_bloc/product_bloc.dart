import 'dart:convert';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:universal_shop/infrastructure/models/auth/auth_model.dart';
import 'package:universal_shop/infrastructure/models/product/product_model.dart';
import 'package:universal_shop/infrastructure/models/user/user_model.dart';
import 'package:universal_shop/infrastructure/services/image_service.dart';
import 'package:universal_shop/main.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';
import 'package:wechat_camera_picker/wechat_camera_picker.dart';

import '../../infrastructure/models/component/component_model.dart';
import '../../infrastructure/repositories/image_upload_repo.dart';
import '../../infrastructure/repositories/product_repo.dart';
import '../../infrastructure/services/dynamic_link.dart';
import '../../infrastructure/services/firebase_service.dart';

part 'product_bloc.freezed.dart';

part 'product_event.dart';

part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRepo productRepo;
  final FirebaseService firebaseService;

  ProductBloc({required this.productRepo, required this.firebaseService})
      : super(const _ProductState()) {
    on<_GetProductWithSort>(_getProductsWithSort);
    on<_ImagePick>(_imagePick);
    on<_CreateProduct>(_createProduct);
    on<_SearchProductsStart>(_searchMarketStart);
    on<_RemoveImage>(_removeImage);
    on<_CreateComponent>(_createComponent);
    on<_GetComponent>(_getComponent);
    on<_InitialImage>(_initialImage);
  }

  Future _getProductsWithSort(
      _GetProductWithSort value,
      Emitter<ProductState> emit,
      ) async {
    bool isSearch = value.isSearch??false;
    bool isList = value.isList??false;
    emit(state.copyWith(noMoreData: false, error: false, searching: isSearch));
    List<ProductDetailModel> products =
    value.firstPage ? [] : List.from(!isSearch ? state.products : state.searchProducts);
    List<DocumentSnapshot> allDocumentList =
    value.firstPage ? [] : List.from(!isSearch ? state.allDocumentList  : state.searchDocumentList);
    try {
      List<DocumentSnapshot> documentList =
      allDocumentList.isEmpty || value.firstPage
          ? await firebaseService.searchData(
          orderBy: "index",
          path: "products", query:value.query, field: value.field, limit: (isSearch || isList) ? 99 : 5,
          isList: isList
      )
          : await firebaseService.searchDataWithPagination(
          query:value.query, field: value.field,
          orderBy: "index",
          path: "products",
          documentList: allDocumentList,  limit: (isSearch || isList) ? 99 :  5, isList: isList);
      for (var element in documentList) {
        if (element.data() != null) {
          ProductDetailModel? product =
          await ProductDetailModel.fromFire(element as DocumentSnapshot<Map<String, dynamic>>);
          if (product != null) {
            products.add(product);
          }
        }
      }
      allDocumentList.addAll(documentList);
      p(documentList.isEmpty);
      if(!isSearch) {

        emit(state.copyWith(
            products: products,
            allDocumentList: allDocumentList,
            noMoreData: documentList.isEmpty, isInitial: false));
      }else{
        emit(state.copyWith(
            searchProducts: products,
            searchDocumentList: allDocumentList,
            noMoreData: documentList.isEmpty,
        searching: false, isInitial: false
        ));
      }
      EasyLoading.dismiss();
    } on SocketException {
      EasyLoading.showError("no_connection_body".tr());
      emit(state.copyWith(error: true, searching: false, isInitial: false));
    } catch (e) {
      p("error _getProductsWithSort ${e.toString()}");
      EasyLoading.showError(e.toString());
      emit(state.copyWith(error: true, searching: false, isInitial: false));
    }
  }

  Future _getComponent(
    _GetComponent value,
    Emitter<ProductState> emit,
  ) async {
    List<ComponentModel> components = [];
    try {
      List<DocumentSnapshot> documentList = await firebaseService
          .fetchFirstList(orderBy: "index", path: "components", limit: 500);
      for (var element in documentList) {
        if (element.data() != null) {
          ComponentModel? component =
              ComponentModel.fromJson(element.data() as Map<String, dynamic>);
          if (component != null) {
            components.add(component);
          }
        }
      }
      p(documentList.isEmpty);
      emit(state.copyWith(
        components: components,
      ));
    } on SocketException {
      EasyLoading.showError("no_connection_body".tr());
      emit(state.copyWith(error: true));
    } catch (e) {
      p(e.toString());
      emit(state.copyWith(error: true));
      EasyLoading.showError(e.toString());
    }
  }

  Future<void> _createComponent(
    _CreateComponent value,
    Emitter<ProductState> emit,
  ) async {
    EasyLoading.show();
    emit(state.copyWith(successCreateComponent: false));
    bool isCreate = await productRepo.setComponent(value.componentModel);
    if (isCreate) {
      List<ComponentModel> components = List.from(state.components);
      components.add(value.componentModel);
      EasyLoading.showSuccess("success".tr());
      emit(
          state.copyWith(successCreateComponent: true, components: components));
    }
    EasyLoading.dismiss();
  }

  Future<void> _removeImage(
    _RemoveImage value,
    Emitter<ProductState> emit,
  ) async {
    emit(state.copyWith(deleteImage: false, success: false));
    List<AssetEntity> assets = List.from(state.assets);
    assets.remove(value.assetEntity);
    emit(state.copyWith(assets: assets, deleteImage: true));
  }

  Future<void> _initialImage(
    _InitialImage value,
    Emitter<ProductState> emit,
  ) async {
    List<AssetEntity> assets = List.from(value.assetEntity);
    emit(state.copyWith(assets: assets));
  }



  Future _searchMarketStart(_SearchProductsStart value,
      Emitter<ProductState> emit,) async {
    emit(state.copyWith(searching: true));
  }


  Future<void> _imagePick(_ImagePick value,
      Emitter<ProductState> emit,) async {
    List<AssetEntity> assets = await ImageService.showPicker(value.context,
        aspectRatioPresets: [CropAspectRatioPreset.square],
        maxAssets: 4,
        selectedAssets: value.addImage ? state.assets : null) ??
        [];
    if (assets.isNotEmpty) {
      emit(state.copyWith(assets: assets, emptyImage: false));
    }
  }

  Future<void> _createProduct(
    _CreateProduct value,
    Emitter<ProductState> emit,
  ) async {
    emit(state.copyWith(
        success: false, emptyImage: false, emptyCategories: false));
    EasyLoading.show();
    try {
      ProductDetailModel product = value.product;
      Map<String, List<String>> allImages = {};
      if (product.options != null && product.options!.isNotEmpty) {
        for (var option in product.options!) {
          List<String> images = [];
          if (option.assets != null) {
            for (var p0 in option.assets!) {
              String image = await ImageUploadRepo.imageUpload(p0);
              if (image.isNotEmpty) {
                images.add(image);
              }
            }
          } else if (option.photoUrl != null) {}
          allImages[option.optionUid ?? ""] = images;
        }

        if (!(product.options!
            .map((p0) =>
                (p0.photoUrl == null || p0.photoUrl!.isEmpty) &&
                (allImages[p0.optionUid ?? ""]?.isEmpty ?? true))
            .contains(true))) {
          String dynamicLink = await DynamicLink.generateDynamicLink(
              "link?product_uid=${product.uid}",
              product.options!.first.photoUrl?.first ??
                  allImages[product.options!.first.optionUid ?? ""]?.first ??
                  "");
          List<Option> options = [];
          for (var p0 in product.options!) {
            BuiltList<String> photoUrls = BuiltList.from(
                (p0.photoUrl?.toList() ?? []) +
                    (allImages[p0.optionUid] ?? []));
            p0 = p0.rebuild((p1) => p1..badgesModel= null..currencyModel=null
              ..assets = null
              ..photoUrl = photoUrls.toBuiltList().toBuilder());
            options.add(p0);
          }
          product = product
              .rebuild((p0) => p0..options = options.toBuiltList().toBuilder()..dynamicLink = dynamicLink);

          p(product.toJson());
          String result = await firebaseService.setData(
              "products", jsonDecode(product.toJson()), product.uid??"");
          p(result);
          if (result == "success".tr()) {
            EasyLoading.showSuccess(result);
            emit(state.copyWith(success: true, assets: []));
          } else {
            EasyLoading.showError(result);
          }
        } else {
          EasyLoading.showError("image_upload_error".tr());
        }
      } else {
        EasyLoading.showError("option_required".tr());
      }
    } catch (e) {
      p("errorProduct $e");
      EasyLoading.showError(e.toString());
    }
  }
}
