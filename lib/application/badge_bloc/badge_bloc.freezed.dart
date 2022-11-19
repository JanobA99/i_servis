// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'badge_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BadgeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, String? photoUrl) imagePick,
    required TResult Function(CategoryOrInnerSubcategoryOrBadgeModel badgeModel,
            CategoryOrInnerSubcategoryOrBadgeModel? oldBadgeModel)
        createBadge,
    required TResult Function(List<AssetEntity> assets, String? photoUrl)
        setImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context, String? photoUrl)? imagePick,
    TResult Function(CategoryOrInnerSubcategoryOrBadgeModel badgeModel,
            CategoryOrInnerSubcategoryOrBadgeModel? oldBadgeModel)?
        createBadge,
    TResult Function(List<AssetEntity> assets, String? photoUrl)? setImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String? photoUrl)? imagePick,
    TResult Function(CategoryOrInnerSubcategoryOrBadgeModel badgeModel,
            CategoryOrInnerSubcategoryOrBadgeModel? oldBadgeModel)?
        createBadge,
    TResult Function(List<AssetEntity> assets, String? photoUrl)? setImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ImagePick value) imagePick,
    required TResult Function(_CreateBadge value) createBadge,
    required TResult Function(_SetImage value) setImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateBadge value)? createBadge,
    TResult Function(_SetImage value)? setImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateBadge value)? createBadge,
    TResult Function(_SetImage value)? setImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BadgeEventCopyWith<$Res> {
  factory $BadgeEventCopyWith(
          BadgeEvent value, $Res Function(BadgeEvent) then) =
      _$BadgeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BadgeEventCopyWithImpl<$Res> implements $BadgeEventCopyWith<$Res> {
  _$BadgeEventCopyWithImpl(this._value, this._then);

  final BadgeEvent _value;
  // ignore: unused_field
  final $Res Function(BadgeEvent) _then;
}

/// @nodoc
abstract class _$$_ImagePickCopyWith<$Res> {
  factory _$$_ImagePickCopyWith(
          _$_ImagePick value, $Res Function(_$_ImagePick) then) =
      __$$_ImagePickCopyWithImpl<$Res>;
  $Res call({BuildContext context, String? photoUrl});
}

/// @nodoc
class __$$_ImagePickCopyWithImpl<$Res> extends _$BadgeEventCopyWithImpl<$Res>
    implements _$$_ImagePickCopyWith<$Res> {
  __$$_ImagePickCopyWithImpl(
      _$_ImagePick _value, $Res Function(_$_ImagePick) _then)
      : super(_value, (v) => _then(v as _$_ImagePick));

  @override
  _$_ImagePick get _value => super._value as _$_ImagePick;

  @override
  $Res call({
    Object? context = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_$_ImagePick(
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ImagePick implements _ImagePick {
  _$_ImagePick({required this.context, required this.photoUrl});

  @override
  final BuildContext context;
  @override
  final String? photoUrl;

  @override
  String toString() {
    return 'BadgeEvent.imagePick(context: $context, photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImagePick &&
            const DeepCollectionEquality().equals(other.context, context) &&
            const DeepCollectionEquality().equals(other.photoUrl, photoUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(context),
      const DeepCollectionEquality().hash(photoUrl));

  @JsonKey(ignore: true)
  @override
  _$$_ImagePickCopyWith<_$_ImagePick> get copyWith =>
      __$$_ImagePickCopyWithImpl<_$_ImagePick>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, String? photoUrl) imagePick,
    required TResult Function(CategoryOrInnerSubcategoryOrBadgeModel badgeModel,
            CategoryOrInnerSubcategoryOrBadgeModel? oldBadgeModel)
        createBadge,
    required TResult Function(List<AssetEntity> assets, String? photoUrl)
        setImage,
  }) {
    return imagePick(context, photoUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context, String? photoUrl)? imagePick,
    TResult Function(CategoryOrInnerSubcategoryOrBadgeModel badgeModel,
            CategoryOrInnerSubcategoryOrBadgeModel? oldBadgeModel)?
        createBadge,
    TResult Function(List<AssetEntity> assets, String? photoUrl)? setImage,
  }) {
    return imagePick?.call(context, photoUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String? photoUrl)? imagePick,
    TResult Function(CategoryOrInnerSubcategoryOrBadgeModel badgeModel,
            CategoryOrInnerSubcategoryOrBadgeModel? oldBadgeModel)?
        createBadge,
    TResult Function(List<AssetEntity> assets, String? photoUrl)? setImage,
    required TResult orElse(),
  }) {
    if (imagePick != null) {
      return imagePick(context, photoUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ImagePick value) imagePick,
    required TResult Function(_CreateBadge value) createBadge,
    required TResult Function(_SetImage value) setImage,
  }) {
    return imagePick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateBadge value)? createBadge,
    TResult Function(_SetImage value)? setImage,
  }) {
    return imagePick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateBadge value)? createBadge,
    TResult Function(_SetImage value)? setImage,
    required TResult orElse(),
  }) {
    if (imagePick != null) {
      return imagePick(this);
    }
    return orElse();
  }
}

abstract class _ImagePick implements BadgeEvent {
  factory _ImagePick(
      {required final BuildContext context,
      required final String? photoUrl}) = _$_ImagePick;

  BuildContext get context;
  String? get photoUrl;
  @JsonKey(ignore: true)
  _$$_ImagePickCopyWith<_$_ImagePick> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CreateBadgeCopyWith<$Res> {
  factory _$$_CreateBadgeCopyWith(
          _$_CreateBadge value, $Res Function(_$_CreateBadge) then) =
      __$$_CreateBadgeCopyWithImpl<$Res>;
  $Res call(
      {CategoryOrInnerSubcategoryOrBadgeModel badgeModel,
      CategoryOrInnerSubcategoryOrBadgeModel? oldBadgeModel});
}

/// @nodoc
class __$$_CreateBadgeCopyWithImpl<$Res> extends _$BadgeEventCopyWithImpl<$Res>
    implements _$$_CreateBadgeCopyWith<$Res> {
  __$$_CreateBadgeCopyWithImpl(
      _$_CreateBadge _value, $Res Function(_$_CreateBadge) _then)
      : super(_value, (v) => _then(v as _$_CreateBadge));

  @override
  _$_CreateBadge get _value => super._value as _$_CreateBadge;

  @override
  $Res call({
    Object? badgeModel = freezed,
    Object? oldBadgeModel = freezed,
  }) {
    return _then(_$_CreateBadge(
      badgeModel: badgeModel == freezed
          ? _value.badgeModel
          : badgeModel // ignore: cast_nullable_to_non_nullable
              as CategoryOrInnerSubcategoryOrBadgeModel,
      oldBadgeModel: oldBadgeModel == freezed
          ? _value.oldBadgeModel
          : oldBadgeModel // ignore: cast_nullable_to_non_nullable
              as CategoryOrInnerSubcategoryOrBadgeModel?,
    ));
  }
}

/// @nodoc

class _$_CreateBadge implements _CreateBadge {
  _$_CreateBadge({required this.badgeModel, this.oldBadgeModel});

  @override
  final CategoryOrInnerSubcategoryOrBadgeModel badgeModel;
  @override
  final CategoryOrInnerSubcategoryOrBadgeModel? oldBadgeModel;

  @override
  String toString() {
    return 'BadgeEvent.createBadge(badgeModel: $badgeModel, oldBadgeModel: $oldBadgeModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateBadge &&
            const DeepCollectionEquality()
                .equals(other.badgeModel, badgeModel) &&
            const DeepCollectionEquality()
                .equals(other.oldBadgeModel, oldBadgeModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(badgeModel),
      const DeepCollectionEquality().hash(oldBadgeModel));

  @JsonKey(ignore: true)
  @override
  _$$_CreateBadgeCopyWith<_$_CreateBadge> get copyWith =>
      __$$_CreateBadgeCopyWithImpl<_$_CreateBadge>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, String? photoUrl) imagePick,
    required TResult Function(CategoryOrInnerSubcategoryOrBadgeModel badgeModel,
            CategoryOrInnerSubcategoryOrBadgeModel? oldBadgeModel)
        createBadge,
    required TResult Function(List<AssetEntity> assets, String? photoUrl)
        setImage,
  }) {
    return createBadge(badgeModel, oldBadgeModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context, String? photoUrl)? imagePick,
    TResult Function(CategoryOrInnerSubcategoryOrBadgeModel badgeModel,
            CategoryOrInnerSubcategoryOrBadgeModel? oldBadgeModel)?
        createBadge,
    TResult Function(List<AssetEntity> assets, String? photoUrl)? setImage,
  }) {
    return createBadge?.call(badgeModel, oldBadgeModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String? photoUrl)? imagePick,
    TResult Function(CategoryOrInnerSubcategoryOrBadgeModel badgeModel,
            CategoryOrInnerSubcategoryOrBadgeModel? oldBadgeModel)?
        createBadge,
    TResult Function(List<AssetEntity> assets, String? photoUrl)? setImage,
    required TResult orElse(),
  }) {
    if (createBadge != null) {
      return createBadge(badgeModel, oldBadgeModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ImagePick value) imagePick,
    required TResult Function(_CreateBadge value) createBadge,
    required TResult Function(_SetImage value) setImage,
  }) {
    return createBadge(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateBadge value)? createBadge,
    TResult Function(_SetImage value)? setImage,
  }) {
    return createBadge?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateBadge value)? createBadge,
    TResult Function(_SetImage value)? setImage,
    required TResult orElse(),
  }) {
    if (createBadge != null) {
      return createBadge(this);
    }
    return orElse();
  }
}

abstract class _CreateBadge implements BadgeEvent {
  factory _CreateBadge(
          {required final CategoryOrInnerSubcategoryOrBadgeModel badgeModel,
          final CategoryOrInnerSubcategoryOrBadgeModel? oldBadgeModel}) =
      _$_CreateBadge;

  CategoryOrInnerSubcategoryOrBadgeModel get badgeModel;
  CategoryOrInnerSubcategoryOrBadgeModel? get oldBadgeModel;
  @JsonKey(ignore: true)
  _$$_CreateBadgeCopyWith<_$_CreateBadge> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetImageCopyWith<$Res> {
  factory _$$_SetImageCopyWith(
          _$_SetImage value, $Res Function(_$_SetImage) then) =
      __$$_SetImageCopyWithImpl<$Res>;
  $Res call({List<AssetEntity> assets, String? photoUrl});
}

/// @nodoc
class __$$_SetImageCopyWithImpl<$Res> extends _$BadgeEventCopyWithImpl<$Res>
    implements _$$_SetImageCopyWith<$Res> {
  __$$_SetImageCopyWithImpl(
      _$_SetImage _value, $Res Function(_$_SetImage) _then)
      : super(_value, (v) => _then(v as _$_SetImage));

  @override
  _$_SetImage get _value => super._value as _$_SetImage;

  @override
  $Res call({
    Object? assets = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_$_SetImage(
      assets: assets == freezed
          ? _value._assets
          : assets // ignore: cast_nullable_to_non_nullable
              as List<AssetEntity>,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SetImage implements _SetImage {
  _$_SetImage({required final List<AssetEntity> assets, required this.photoUrl})
      : _assets = assets;

  final List<AssetEntity> _assets;
  @override
  List<AssetEntity> get assets {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assets);
  }

  @override
  final String? photoUrl;

  @override
  String toString() {
    return 'BadgeEvent.setImage(assets: $assets, photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetImage &&
            const DeepCollectionEquality().equals(other._assets, _assets) &&
            const DeepCollectionEquality().equals(other.photoUrl, photoUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_assets),
      const DeepCollectionEquality().hash(photoUrl));

  @JsonKey(ignore: true)
  @override
  _$$_SetImageCopyWith<_$_SetImage> get copyWith =>
      __$$_SetImageCopyWithImpl<_$_SetImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, String? photoUrl) imagePick,
    required TResult Function(CategoryOrInnerSubcategoryOrBadgeModel badgeModel,
            CategoryOrInnerSubcategoryOrBadgeModel? oldBadgeModel)
        createBadge,
    required TResult Function(List<AssetEntity> assets, String? photoUrl)
        setImage,
  }) {
    return setImage(assets, photoUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context, String? photoUrl)? imagePick,
    TResult Function(CategoryOrInnerSubcategoryOrBadgeModel badgeModel,
            CategoryOrInnerSubcategoryOrBadgeModel? oldBadgeModel)?
        createBadge,
    TResult Function(List<AssetEntity> assets, String? photoUrl)? setImage,
  }) {
    return setImage?.call(assets, photoUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String? photoUrl)? imagePick,
    TResult Function(CategoryOrInnerSubcategoryOrBadgeModel badgeModel,
            CategoryOrInnerSubcategoryOrBadgeModel? oldBadgeModel)?
        createBadge,
    TResult Function(List<AssetEntity> assets, String? photoUrl)? setImage,
    required TResult orElse(),
  }) {
    if (setImage != null) {
      return setImage(assets, photoUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ImagePick value) imagePick,
    required TResult Function(_CreateBadge value) createBadge,
    required TResult Function(_SetImage value) setImage,
  }) {
    return setImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateBadge value)? createBadge,
    TResult Function(_SetImage value)? setImage,
  }) {
    return setImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateBadge value)? createBadge,
    TResult Function(_SetImage value)? setImage,
    required TResult orElse(),
  }) {
    if (setImage != null) {
      return setImage(this);
    }
    return orElse();
  }
}

abstract class _SetImage implements BadgeEvent {
  factory _SetImage(
      {required final List<AssetEntity> assets,
      required final String? photoUrl}) = _$_SetImage;

  List<AssetEntity> get assets;
  String? get photoUrl;
  @JsonKey(ignore: true)
  _$$_SetImageCopyWith<_$_SetImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BadgeState {
  UserModel? get userModel => throw _privateConstructorUsedError;
  List<AssetEntity> get assets => throw _privateConstructorUsedError;
  bool get emptyImage => throw _privateConstructorUsedError;
  bool get emptyTitle => throw _privateConstructorUsedError;
  bool get successCreateBadge => throw _privateConstructorUsedError;
  bool get noMoreData => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BadgeStateCopyWith<BadgeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BadgeStateCopyWith<$Res> {
  factory $BadgeStateCopyWith(
          BadgeState value, $Res Function(BadgeState) then) =
      _$BadgeStateCopyWithImpl<$Res>;
  $Res call(
      {UserModel? userModel,
      List<AssetEntity> assets,
      bool emptyImage,
      bool emptyTitle,
      bool successCreateBadge,
      bool noMoreData,
      bool error});
}

/// @nodoc
class _$BadgeStateCopyWithImpl<$Res> implements $BadgeStateCopyWith<$Res> {
  _$BadgeStateCopyWithImpl(this._value, this._then);

  final BadgeState _value;
  // ignore: unused_field
  final $Res Function(BadgeState) _then;

  @override
  $Res call({
    Object? userModel = freezed,
    Object? assets = freezed,
    Object? emptyImage = freezed,
    Object? emptyTitle = freezed,
    Object? successCreateBadge = freezed,
    Object? noMoreData = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      userModel: userModel == freezed
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      assets: assets == freezed
          ? _value.assets
          : assets // ignore: cast_nullable_to_non_nullable
              as List<AssetEntity>,
      emptyImage: emptyImage == freezed
          ? _value.emptyImage
          : emptyImage // ignore: cast_nullable_to_non_nullable
              as bool,
      emptyTitle: emptyTitle == freezed
          ? _value.emptyTitle
          : emptyTitle // ignore: cast_nullable_to_non_nullable
              as bool,
      successCreateBadge: successCreateBadge == freezed
          ? _value.successCreateBadge
          : successCreateBadge // ignore: cast_nullable_to_non_nullable
              as bool,
      noMoreData: noMoreData == freezed
          ? _value.noMoreData
          : noMoreData // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_BadgeStateCopyWith<$Res>
    implements $BadgeStateCopyWith<$Res> {
  factory _$$_BadgeStateCopyWith(
          _$_BadgeState value, $Res Function(_$_BadgeState) then) =
      __$$_BadgeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserModel? userModel,
      List<AssetEntity> assets,
      bool emptyImage,
      bool emptyTitle,
      bool successCreateBadge,
      bool noMoreData,
      bool error});
}

/// @nodoc
class __$$_BadgeStateCopyWithImpl<$Res> extends _$BadgeStateCopyWithImpl<$Res>
    implements _$$_BadgeStateCopyWith<$Res> {
  __$$_BadgeStateCopyWithImpl(
      _$_BadgeState _value, $Res Function(_$_BadgeState) _then)
      : super(_value, (v) => _then(v as _$_BadgeState));

  @override
  _$_BadgeState get _value => super._value as _$_BadgeState;

  @override
  $Res call({
    Object? userModel = freezed,
    Object? assets = freezed,
    Object? emptyImage = freezed,
    Object? emptyTitle = freezed,
    Object? successCreateBadge = freezed,
    Object? noMoreData = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_BadgeState(
      userModel: userModel == freezed
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      assets: assets == freezed
          ? _value._assets
          : assets // ignore: cast_nullable_to_non_nullable
              as List<AssetEntity>,
      emptyImage: emptyImage == freezed
          ? _value.emptyImage
          : emptyImage // ignore: cast_nullable_to_non_nullable
              as bool,
      emptyTitle: emptyTitle == freezed
          ? _value.emptyTitle
          : emptyTitle // ignore: cast_nullable_to_non_nullable
              as bool,
      successCreateBadge: successCreateBadge == freezed
          ? _value.successCreateBadge
          : successCreateBadge // ignore: cast_nullable_to_non_nullable
              as bool,
      noMoreData: noMoreData == freezed
          ? _value.noMoreData
          : noMoreData // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_BadgeState implements _BadgeState {
  const _$_BadgeState(
      {this.userModel = null,
      final List<AssetEntity> assets = const [],
      this.emptyImage = false,
      this.emptyTitle = false,
      this.successCreateBadge = false,
      this.noMoreData = false,
      this.error = false})
      : _assets = assets;

  @override
  @JsonKey()
  final UserModel? userModel;
  final List<AssetEntity> _assets;
  @override
  @JsonKey()
  List<AssetEntity> get assets {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assets);
  }

  @override
  @JsonKey()
  final bool emptyImage;
  @override
  @JsonKey()
  final bool emptyTitle;
  @override
  @JsonKey()
  final bool successCreateBadge;
  @override
  @JsonKey()
  final bool noMoreData;
  @override
  @JsonKey()
  final bool error;

  @override
  String toString() {
    return 'BadgeState(userModel: $userModel, assets: $assets, emptyImage: $emptyImage, emptyTitle: $emptyTitle, successCreateBadge: $successCreateBadge, noMoreData: $noMoreData, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BadgeState &&
            const DeepCollectionEquality().equals(other.userModel, userModel) &&
            const DeepCollectionEquality().equals(other._assets, _assets) &&
            const DeepCollectionEquality()
                .equals(other.emptyImage, emptyImage) &&
            const DeepCollectionEquality()
                .equals(other.emptyTitle, emptyTitle) &&
            const DeepCollectionEquality()
                .equals(other.successCreateBadge, successCreateBadge) &&
            const DeepCollectionEquality()
                .equals(other.noMoreData, noMoreData) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userModel),
      const DeepCollectionEquality().hash(_assets),
      const DeepCollectionEquality().hash(emptyImage),
      const DeepCollectionEquality().hash(emptyTitle),
      const DeepCollectionEquality().hash(successCreateBadge),
      const DeepCollectionEquality().hash(noMoreData),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_BadgeStateCopyWith<_$_BadgeState> get copyWith =>
      __$$_BadgeStateCopyWithImpl<_$_BadgeState>(this, _$identity);
}

abstract class _BadgeState implements BadgeState {
  const factory _BadgeState(
      {final UserModel? userModel,
      final List<AssetEntity> assets,
      final bool emptyImage,
      final bool emptyTitle,
      final bool successCreateBadge,
      final bool noMoreData,
      final bool error}) = _$_BadgeState;

  @override
  UserModel? get userModel;
  @override
  List<AssetEntity> get assets;
  @override
  bool get emptyImage;
  @override
  bool get emptyTitle;
  @override
  bool get successCreateBadge;
  @override
  bool get noMoreData;
  @override
  bool get error;
  @override
  @JsonKey(ignore: true)
  _$$_BadgeStateCopyWith<_$_BadgeState> get copyWith =>
      throw _privateConstructorUsedError;
}
