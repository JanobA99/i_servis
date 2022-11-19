import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:universal_shop/infrastructure/models/auth/auth_model.dart';
import 'package:universal_shop/infrastructure/models/market/market_model.dart';
import 'package:universal_shop/infrastructure/models/user/user_model.dart';
import 'package:universal_shop/infrastructure/repositories/image_upload_repo.dart';
import 'package:universal_shop/infrastructure/services/dynamic_link.dart';
import 'package:universal_shop/infrastructure/services/firebase_service.dart';
import 'package:universal_shop/infrastructure/services/image_service.dart';
import 'package:universal_shop/main.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';
import 'package:wechat_camera_picker/wechat_camera_picker.dart';

import '../../domain/core/hive_keys.dart';

part 'market_bloc.freezed.dart';
part 'market_event.dart';
part 'market_state.dart';

class MarketBloc extends Bloc<MarketEvent, MarketState> {
  final FirebaseService _firebaseService = FirebaseService();

  MarketBloc() : super(const _MarketState()) {
    on<_GetMarkets>(_getMarkets);
    on<_SearchMarket>(_searchMarket);
    on<_ImagePick>(_imagePick);
    on<_CreateMarket>(_createMarket);
    on<_SearchMarketStart>(_searchMarketStart);
    on<_RemoveImage>(_removeImage);
    on<_GetMyMarkets>(_getMyMarkets);
  }

  Future<void> _removeImage(
    _RemoveImage value,
    Emitter<MarketState> emit,
  ) async {
    emit(state.copyWith(deleteImage: false, success: false));
    List<AssetEntity> assets = List.from(state.assets);
    assets.remove(value.assetEntity);
    emit(state.copyWith(assets: assets, deleteImage: true));
  }

  Future<void> _getMyMarkets(
    _GetMyMarkets value,
    Emitter<MarketState> emit,
  ) async {
    emit(state.copyWith(noMoreData: false, error: false));
    List<MarketModel> markets = [];
    try {
      print("ewhhjdsjn ${value.uid}");
      if (value.uid.isNotEmpty) {
        Box<MarketModel> box =
        Hive.box<MarketModel>(HiveKeys.myMarkets);
        p("box.values.length ${value.uid}");
        List<DocumentSnapshot> documentList = await _firebaseService
            .searchData(path: "markets", query: value.uid, field: "admins",  orderBy: "index", limit: 99);
        p(documentList);
        for (var element in documentList) {
            MarketModel? market =
         await   MarketModel.fromFire(
                element as DocumentSnapshot<Map<String, dynamic>>);
            if (market != null) {
              markets.add(market);
              box.put(market.uid, market);
            }
        }
        emit(state.copyWith(myMarkets: markets));
      }
    } on SocketException {
      p("_getMyMarkets Error}");
      EasyLoading.showError("no_connection_body".tr());
      emit(state.copyWith(error: true));
    } catch (e) {
      p("asasdcarewew${e.toString()}");
      emit(state.copyWith(error: true));
      EasyLoading.showError(e.toString());
    }
  }

  Future _getMarkets(
    _GetMarkets value,
    Emitter<MarketState> emit,
  ) async {
    emit(state.copyWith(noMoreData: false, error: false));
    List<MarketModel> markets =
        value.firstPage ? [] : List.from(state.markets);
    List<DocumentSnapshot> allDocumentList =
        value.firstPage ? [] : List.from(state.allDocumentList);
    try {
      List<DocumentSnapshot> documentList =
          allDocumentList.isEmpty || value.firstPage
              ? await _firebaseService.fetchFirstList(
                  orderBy: "create_at", path: "markets")
              : await _firebaseService.fetchNextList(
                  orderBy: "create_at",
                  path: "markets",
                  documentList: allDocumentList);
      for (var element in documentList) {
          MarketModel? market = await MarketModel.fromFire(
            element as DocumentSnapshot<Map<String, dynamic>>);
        if (market != null) {
          markets.add(market);
        }
      }
      allDocumentList.addAll(documentList);
      p(documentList.isEmpty);
      emit(state.copyWith(
          markets: markets,
          allDocumentList: allDocumentList,
          noMoreData: documentList.isEmpty, isInitial: false));
    } on SocketException {
      EasyLoading.showError("no_connection_body".tr());
      emit(state.copyWith(error: true, isInitial: false));
    } catch (e) {
      p(e.toString());
      emit(state.copyWith(error: true, isInitial: false));
      EasyLoading.showError(e.toString());
    }
  }


  Future<void> _searchMarketStart(
    _SearchMarketStart value,
    Emitter<MarketState> emit,
  ) async {
    emit(state.copyWith(searching: true));
  }

  Future _searchMarket(
    _SearchMarket value,
    Emitter<MarketState> emit,
  ) async {
    p("object332");
    List<MarketModel> markets = [];
    try {
      if (value.text.isNotEmpty) {
        List<DocumentSnapshot> documentList =
            await _firebaseService.searchData(
                orderBy: "index",
                path: "markets",
                query: value.text.toLowerCase(),
                field: "case_search");
        p(documentList);
        for (var element in documentList) {
            MarketModel? market = await MarketModel.fromFire(
                element as DocumentSnapshot<Map<String, dynamic>>);
            if (market != null) {
              markets.add(market);
          }
        }
      }
      emit(state.copyWith(searchMarkets: markets, searching: false));
    } on SocketException {
      EasyLoading.showError("no_connection_body".tr());
      emit(state.copyWith(error: true, searching: false));
    } catch (e) {
      p(e.toString());
      emit(state.copyWith(error: true, searching: false));
      EasyLoading.showError(e.toString());
    }
  }

  Future<void> _imagePick(
    _ImagePick value,
    Emitter<MarketState> emit,
  ) async {
    List<AssetEntity> assets = await ImageService.showPicker(value.context,
            aspectRatioPresets: [CropAspectRatioPreset.ratio16x9],
            maxAssets: 4,
            selectedAssets: value.addImage ? state.assets : null) ??
        [];
    if (assets.isNotEmpty) {
      emit(state.copyWith(assets: assets, emptyImage: false));
    }
  }

  Future<void> _createMarket(
    _CreateMarket value,
    Emitter<MarketState> emit,
  ) async {
    bool hasDesc = false;
    bool hasHash = false;
    bool hasTitle = false;
    bool hasImage = false;
    bool hasCategories = false;
    p("value.createRecipeModel ${value.market}");

    if (value.market.categoriesIds == null
        // || value.market.categoriesIds!.isEmpty
    ) {
      EasyLoading.showError("category_required".tr());
      hasCategories = true;
    }

    if (value.market.tags == null || value.market.tags!.isEmpty) {
      EasyLoading.showError("tags_required".tr());
      hasHash = true;
    }

    if (value.market.description == null || value.market.description!.isEmpty) {
      EasyLoading.showError("desc_required".tr());
      hasDesc = true;
    }

    if (value.market.title == null || value.market.title!.isEmpty) {
      EasyLoading.showError("title_required".tr());
      hasTitle = true;
    }
    if ((value.market.assets == null || value.market.assets!.isEmpty) &&
        (value.market.photoUrl == null || value.market.photoUrl!.isEmpty)) {
      EasyLoading.showError("image_required".tr());
      hasImage = true;
    }
    if (hasImage || hasTitle || hasHash || hasDesc || hasCategories) {
      emit(state.copyWith(
          emptyTitle: hasTitle,
          emptyImage: hasImage,
          emptyTags: hasHash,
          emptyDesc: hasDesc,
          emptyCategories: hasCategories));
    } else {
      emit(state.copyWith(
          success: false,
          emptyTitle: false,
          emptyImage: false,
          emptyTags: false,
          emptyDesc: false,
          emptyCategories: false,));
      EasyLoading.show();

      try {
        MarketModel market = value.market;
        List<String> images = [];
        for (var p0 in market.assets!) {
          String image = await ImageUploadRepo.imageUpload(p0);
          if (image.isNotEmpty) {
            images.add(image);
          }
        }
        if (images.isNotEmpty ||
            market.photoUrl != null ||
            market.photoUrl!.isNotEmpty) {
          BuiltList<String>? photoUrl = (images.build() +
              (market.photoUrl != null
                  ? market.photoUrl!
                  : <String>[].build()));
          String dynamicLink =
              await DynamicLink.generateDynamicLink("link?market_uid=${market.uid}", photoUrl.first);
          market = market.rebuild((p0) => p0
            ..dynamicLink = dynamicLink
            ..assets = null
            ..photoUrl = photoUrl
                .toBuilder());
          log(market.toJson());
          String result = await _firebaseService.setData(
              "markets", jsonDecode(market.toJson()), market.uid??"");
          p(result);
          if (result == "success".tr()) {
            List<MarketModel> markets = List.from(state.markets);
            int index =
                markets.indexWhere((element) => element.uid == market.uid);
            if (index != -1) {
              markets.removeAt(index);
            }
            markets.insert(0, market);
            EasyLoading.showSuccess(result);
            emit(state.copyWith(success: true, markets: markets, assets: []));
          } else {
            EasyLoading.showError(result);
          }
        } else {
          EasyLoading.showError("image_upload_error".tr());
        }
      } catch (e) {
        p("errror $e");
        EasyLoading.showError(e.toString());
      }
    }
  }
}
