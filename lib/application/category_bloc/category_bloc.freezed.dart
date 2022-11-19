// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, String? photoUrl) imagePick,
    required TResult Function(
            CategoryOrInnerSubcategoryOrBadgeModel categoryModel,
            String? parentUid,
            CategoryOrInnerSubcategoryOrBadgeModel? oldCategoryModel)
        createCategory,
    required TResult Function(List<AssetEntity> assets, String? photoUrl)
        setImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context, String? photoUrl)? imagePick,
    TResult Function(
            CategoryOrInnerSubcategoryOrBadgeModel categoryModel,
            String? parentUid,
            CategoryOrInnerSubcategoryOrBadgeModel? oldCategoryModel)?
        createCategory,
    TResult Function(List<AssetEntity> assets, String? photoUrl)? setImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String? photoUrl)? imagePick,
    TResult Function(
            CategoryOrInnerSubcategoryOrBadgeModel categoryModel,
            String? parentUid,
            CategoryOrInnerSubcategoryOrBadgeModel? oldCategoryModel)?
        createCategory,
    TResult Function(List<AssetEntity> assets, String? photoUrl)? setImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ImagePick value) imagePick,
    required TResult Function(_CreateCategory value) createCategory,
    required TResult Function(_SetImage value) setImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateCategory value)? createCategory,
    TResult Function(_SetImage value)? setImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateCategory value)? createCategory,
    TResult Function(_SetImage value)? setImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryEventCopyWith<$Res> {
  factory $CategoryEventCopyWith(
          CategoryEvent value, $Res Function(CategoryEvent) then) =
      _$CategoryEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CategoryEventCopyWithImpl<$Res>
    implements $CategoryEventCopyWith<$Res> {
  _$CategoryEventCopyWithImpl(this._value, this._then);

  final CategoryEvent _value;
  // ignore: unused_field
  final $Res Function(CategoryEvent) _then;
}

/// @nodoc
abstract class _$$_ImagePickCopyWith<$Res> {
  factory _$$_ImagePickCopyWith(
          _$_ImagePick value, $Res Function(_$_ImagePick) then) =
      __$$_ImagePickCopyWithImpl<$Res>;
  $Res call({BuildContext context, String? photoUrl});
}

/// @nodoc
class __$$_ImagePickCopyWithImpl<$Res> extends _$CategoryEventCopyWithImpl<$Res>
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
    return 'CategoryEvent.imagePick(context: $context, photoUrl: $photoUrl)';
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
    required TResult Function(
            CategoryOrInnerSubcategoryOrBadgeModel categoryModel,
            String? parentUid,
            CategoryOrInnerSubcategoryOrBadgeModel? oldCategoryModel)
        createCategory,
    required TResult Function(List<AssetEntity> assets, String? photoUrl)
        setImage,
  }) {
    return imagePick(context, photoUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context, String? photoUrl)? imagePick,
    TResult Function(
            CategoryOrInnerSubcategoryOrBadgeModel categoryModel,
            String? parentUid,
            CategoryOrInnerSubcategoryOrBadgeModel? oldCategoryModel)?
        createCategory,
    TResult Function(List<AssetEntity> assets, String? photoUrl)? setImage,
  }) {
    return imagePick?.call(context, photoUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String? photoUrl)? imagePick,
    TResult Function(
            CategoryOrInnerSubcategoryOrBadgeModel categoryModel,
            String? parentUid,
            CategoryOrInnerSubcategoryOrBadgeModel? oldCategoryModel)?
        createCategory,
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
    required TResult Function(_CreateCategory value) createCategory,
    required TResult Function(_SetImage value) setImage,
  }) {
    return imagePick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateCategory value)? createCategory,
    TResult Function(_SetImage value)? setImage,
  }) {
    return imagePick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateCategory value)? createCategory,
    TResult Function(_SetImage value)? setImage,
    required TResult orElse(),
  }) {
    if (imagePick != null) {
      return imagePick(this);
    }
    return orElse();
  }
}

abstract class _ImagePick implements CategoryEvent {
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
abstract class _$$_CreateCategoryCopyWith<$Res> {
  factory _$$_CreateCategoryCopyWith(
          _$_CreateCategory value, $Res Function(_$_CreateCategory) then) =
      __$$_CreateCategoryCopyWithImpl<$Res>;
  $Res call(
      {CategoryOrInnerSubcategoryOrBadgeModel categoryModel,
      String? parentUid,
      CategoryOrInnerSubcategoryOrBadgeModel? oldCategoryModel});
}

/// @nodoc
class __$$_CreateCategoryCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res>
    implements _$$_CreateCategoryCopyWith<$Res> {
  __$$_CreateCategoryCopyWithImpl(
      _$_CreateCategory _value, $Res Function(_$_CreateCategory) _then)
      : super(_value, (v) => _then(v as _$_CreateCategory));

  @override
  _$_CreateCategory get _value => super._value as _$_CreateCategory;

  @override
  $Res call({
    Object? categoryModel = freezed,
    Object? parentUid = freezed,
    Object? oldCategoryModel = freezed,
  }) {
    return _then(_$_CreateCategory(
      categoryModel: categoryModel == freezed
          ? _value.categoryModel
          : categoryModel // ignore: cast_nullable_to_non_nullable
              as CategoryOrInnerSubcategoryOrBadgeModel,
      parentUid: parentUid == freezed
          ? _value.parentUid
          : parentUid // ignore: cast_nullable_to_non_nullable
              as String?,
      oldCategoryModel: oldCategoryModel == freezed
          ? _value.oldCategoryModel
          : oldCategoryModel // ignore: cast_nullable_to_non_nullable
              as CategoryOrInnerSubcategoryOrBadgeModel?,
    ));
  }
}

/// @nodoc

class _$_CreateCategory implements _CreateCategory {
  _$_CreateCategory(
      {required this.categoryModel,
      required this.parentUid,
      this.oldCategoryModel});

  @override
  final CategoryOrInnerSubcategoryOrBadgeModel categoryModel;
  @override
  final String? parentUid;
  @override
  final CategoryOrInnerSubcategoryOrBadgeModel? oldCategoryModel;

  @override
  String toString() {
    return 'CategoryEvent.createCategory(categoryModel: $categoryModel, parentUid: $parentUid, oldCategoryModel: $oldCategoryModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateCategory &&
            const DeepCollectionEquality()
                .equals(other.categoryModel, categoryModel) &&
            const DeepCollectionEquality().equals(other.parentUid, parentUid) &&
            const DeepCollectionEquality()
                .equals(other.oldCategoryModel, oldCategoryModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(categoryModel),
      const DeepCollectionEquality().hash(parentUid),
      const DeepCollectionEquality().hash(oldCategoryModel));

  @JsonKey(ignore: true)
  @override
  _$$_CreateCategoryCopyWith<_$_CreateCategory> get copyWith =>
      __$$_CreateCategoryCopyWithImpl<_$_CreateCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, String? photoUrl) imagePick,
    required TResult Function(
            CategoryOrInnerSubcategoryOrBadgeModel categoryModel,
            String? parentUid,
            CategoryOrInnerSubcategoryOrBadgeModel? oldCategoryModel)
        createCategory,
    required TResult Function(List<AssetEntity> assets, String? photoUrl)
        setImage,
  }) {
    return createCategory(categoryModel, parentUid, oldCategoryModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context, String? photoUrl)? imagePick,
    TResult Function(
            CategoryOrInnerSubcategoryOrBadgeModel categoryModel,
            String? parentUid,
            CategoryOrInnerSubcategoryOrBadgeModel? oldCategoryModel)?
        createCategory,
    TResult Function(List<AssetEntity> assets, String? photoUrl)? setImage,
  }) {
    return createCategory?.call(categoryModel, parentUid, oldCategoryModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String? photoUrl)? imagePick,
    TResult Function(
            CategoryOrInnerSubcategoryOrBadgeModel categoryModel,
            String? parentUid,
            CategoryOrInnerSubcategoryOrBadgeModel? oldCategoryModel)?
        createCategory,
    TResult Function(List<AssetEntity> assets, String? photoUrl)? setImage,
    required TResult orElse(),
  }) {
    if (createCategory != null) {
      return createCategory(categoryModel, parentUid, oldCategoryModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ImagePick value) imagePick,
    required TResult Function(_CreateCategory value) createCategory,
    required TResult Function(_SetImage value) setImage,
  }) {
    return createCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateCategory value)? createCategory,
    TResult Function(_SetImage value)? setImage,
  }) {
    return createCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateCategory value)? createCategory,
    TResult Function(_SetImage value)? setImage,
    required TResult orElse(),
  }) {
    if (createCategory != null) {
      return createCategory(this);
    }
    return orElse();
  }
}

abstract class _CreateCategory implements CategoryEvent {
  factory _CreateCategory(
          {required final CategoryOrInnerSubcategoryOrBadgeModel categoryModel,
          required final String? parentUid,
          final CategoryOrInnerSubcategoryOrBadgeModel? oldCategoryModel}) =
      _$_CreateCategory;

  CategoryOrInnerSubcategoryOrBadgeModel get categoryModel;
  String? get parentUid;
  CategoryOrInnerSubcategoryOrBadgeModel? get oldCategoryModel;
  @JsonKey(ignore: true)
  _$$_CreateCategoryCopyWith<_$_CreateCategory> get copyWith =>
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
class __$$_SetImageCopyWithImpl<$Res> extends _$CategoryEventCopyWithImpl<$Res>
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
    return 'CategoryEvent.setImage(assets: $assets, photoUrl: $photoUrl)';
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
    required TResult Function(
            CategoryOrInnerSubcategoryOrBadgeModel categoryModel,
            String? parentUid,
            CategoryOrInnerSubcategoryOrBadgeModel? oldCategoryModel)
        createCategory,
    required TResult Function(List<AssetEntity> assets, String? photoUrl)
        setImage,
  }) {
    return setImage(assets, photoUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context, String? photoUrl)? imagePick,
    TResult Function(
            CategoryOrInnerSubcategoryOrBadgeModel categoryModel,
            String? parentUid,
            CategoryOrInnerSubcategoryOrBadgeModel? oldCategoryModel)?
        createCategory,
    TResult Function(List<AssetEntity> assets, String? photoUrl)? setImage,
  }) {
    return setImage?.call(assets, photoUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String? photoUrl)? imagePick,
    TResult Function(
            CategoryOrInnerSubcategoryOrBadgeModel categoryModel,
            String? parentUid,
            CategoryOrInnerSubcategoryOrBadgeModel? oldCategoryModel)?
        createCategory,
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
    required TResult Function(_CreateCategory value) createCategory,
    required TResult Function(_SetImage value) setImage,
  }) {
    return setImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateCategory value)? createCategory,
    TResult Function(_SetImage value)? setImage,
  }) {
    return setImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateCategory value)? createCategory,
    TResult Function(_SetImage value)? setImage,
    required TResult orElse(),
  }) {
    if (setImage != null) {
      return setImage(this);
    }
    return orElse();
  }
}

abstract class _SetImage implements CategoryEvent {
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
mixin _$CategoryState {
  UserModel? get userModel => throw _privateConstructorUsedError;
  List<AssetEntity> get assets => throw _privateConstructorUsedError;
  bool get emptyImage => throw _privateConstructorUsedError;
  bool get emptyTitle => throw _privateConstructorUsedError;
  bool get successCreateCategory => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryStateCopyWith<CategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStateCopyWith<$Res> {
  factory $CategoryStateCopyWith(
          CategoryState value, $Res Function(CategoryState) then) =
      _$CategoryStateCopyWithImpl<$Res>;
  $Res call(
      {UserModel? userModel,
      List<AssetEntity> assets,
      bool emptyImage,
      bool emptyTitle,
      bool successCreateCategory,
      bool error});
}

/// @nodoc
class _$CategoryStateCopyWithImpl<$Res>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

  final CategoryState _value;
  // ignore: unused_field
  final $Res Function(CategoryState) _then;

  @override
  $Res call({
    Object? userModel = freezed,
    Object? assets = freezed,
    Object? emptyImage = freezed,
    Object? emptyTitle = freezed,
    Object? successCreateCategory = freezed,
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
      successCreateCategory: successCreateCategory == freezed
          ? _value.successCreateCategory
          : successCreateCategory // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_CategoryStateCopyWith<$Res>
    implements $CategoryStateCopyWith<$Res> {
  factory _$$_CategoryStateCopyWith(
          _$_CategoryState value, $Res Function(_$_CategoryState) then) =
      __$$_CategoryStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserModel? userModel,
      List<AssetEntity> assets,
      bool emptyImage,
      bool emptyTitle,
      bool successCreateCategory,
      bool error});
}

/// @nodoc
class __$$_CategoryStateCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res>
    implements _$$_CategoryStateCopyWith<$Res> {
  __$$_CategoryStateCopyWithImpl(
      _$_CategoryState _value, $Res Function(_$_CategoryState) _then)
      : super(_value, (v) => _then(v as _$_CategoryState));

  @override
  _$_CategoryState get _value => super._value as _$_CategoryState;

  @override
  $Res call({
    Object? userModel = freezed,
    Object? assets = freezed,
    Object? emptyImage = freezed,
    Object? emptyTitle = freezed,
    Object? successCreateCategory = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_CategoryState(
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
      successCreateCategory: successCreateCategory == freezed
          ? _value.successCreateCategory
          : successCreateCategory // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CategoryState implements _CategoryState {
  const _$_CategoryState(
      {this.userModel = null,
      final List<AssetEntity> assets = const [],
      this.emptyImage = false,
      this.emptyTitle = false,
      this.successCreateCategory = false,
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
  final bool successCreateCategory;
  @override
  @JsonKey()
  final bool error;

  @override
  String toString() {
    return 'CategoryState(userModel: $userModel, assets: $assets, emptyImage: $emptyImage, emptyTitle: $emptyTitle, successCreateCategory: $successCreateCategory, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryState &&
            const DeepCollectionEquality().equals(other.userModel, userModel) &&
            const DeepCollectionEquality().equals(other._assets, _assets) &&
            const DeepCollectionEquality()
                .equals(other.emptyImage, emptyImage) &&
            const DeepCollectionEquality()
                .equals(other.emptyTitle, emptyTitle) &&
            const DeepCollectionEquality()
                .equals(other.successCreateCategory, successCreateCategory) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userModel),
      const DeepCollectionEquality().hash(_assets),
      const DeepCollectionEquality().hash(emptyImage),
      const DeepCollectionEquality().hash(emptyTitle),
      const DeepCollectionEquality().hash(successCreateCategory),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_CategoryStateCopyWith<_$_CategoryState> get copyWith =>
      __$$_CategoryStateCopyWithImpl<_$_CategoryState>(this, _$identity);
}

abstract class _CategoryState implements CategoryState {
  const factory _CategoryState(
      {final UserModel? userModel,
      final List<AssetEntity> assets,
      final bool emptyImage,
      final bool emptyTitle,
      final bool successCreateCategory,
      final bool error}) = _$_CategoryState;

  @override
  UserModel? get userModel;
  @override
  List<AssetEntity> get assets;
  @override
  bool get emptyImage;
  @override
  bool get emptyTitle;
  @override
  bool get successCreateCategory;
  @override
  bool get error;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryStateCopyWith<_$_CategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
