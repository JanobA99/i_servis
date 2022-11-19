// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthModel login, AssetEntity images) signUp,
    required TResult Function(BuildContext context, bool addImage) imagePick,
    required TResult Function(ProductDetailModel product) createProduct,
    required TResult Function(AssetEntity assetEntity) removeImage,
    required TResult Function(bool firstPage, Object query, String field,
            bool? isSearch, bool? isList)
        getProductWithSort,
    required TResult Function() searchProductsStart,
    required TResult Function(ComponentModel componentModel) createComponent,
    required TResult Function() getComponent,
    required TResult Function() createCurrency,
    required TResult Function(List<AssetEntity> assetEntity) initialImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images)? signUp,
    TResult Function(BuildContext context, bool addImage)? imagePick,
    TResult Function(ProductDetailModel product)? createProduct,
    TResult Function(AssetEntity assetEntity)? removeImage,
    TResult Function(bool firstPage, Object query, String field, bool? isSearch,
            bool? isList)?
        getProductWithSort,
    TResult Function()? searchProductsStart,
    TResult Function(ComponentModel componentModel)? createComponent,
    TResult Function()? getComponent,
    TResult Function()? createCurrency,
    TResult Function(List<AssetEntity> assetEntity)? initialImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images)? signUp,
    TResult Function(BuildContext context, bool addImage)? imagePick,
    TResult Function(ProductDetailModel product)? createProduct,
    TResult Function(AssetEntity assetEntity)? removeImage,
    TResult Function(bool firstPage, Object query, String field, bool? isSearch,
            bool? isList)?
        getProductWithSort,
    TResult Function()? searchProductsStart,
    TResult Function(ComponentModel componentModel)? createComponent,
    TResult Function()? getComponent,
    TResult Function()? createCurrency,
    TResult Function(List<AssetEntity> assetEntity)? initialImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_ImagePick value) imagePick,
    required TResult Function(_CreateProduct value) createProduct,
    required TResult Function(_RemoveImage value) removeImage,
    required TResult Function(_GetProductWithSort value) getProductWithSort,
    required TResult Function(_SearchProductsStart value) searchProductsStart,
    required TResult Function(_CreateComponent value) createComponent,
    required TResult Function(_GetComponent value) getComponent,
    required TResult Function(_CreateCurrency value) createCurrency,
    required TResult Function(_InitialImage value) initialImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateProduct value)? createProduct,
    TResult Function(_RemoveImage value)? removeImage,
    TResult Function(_GetProductWithSort value)? getProductWithSort,
    TResult Function(_SearchProductsStart value)? searchProductsStart,
    TResult Function(_CreateComponent value)? createComponent,
    TResult Function(_GetComponent value)? getComponent,
    TResult Function(_CreateCurrency value)? createCurrency,
    TResult Function(_InitialImage value)? initialImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateProduct value)? createProduct,
    TResult Function(_RemoveImage value)? removeImage,
    TResult Function(_GetProductWithSort value)? getProductWithSort,
    TResult Function(_SearchProductsStart value)? searchProductsStart,
    TResult Function(_CreateComponent value)? createComponent,
    TResult Function(_GetComponent value)? getComponent,
    TResult Function(_CreateCurrency value)? createCurrency,
    TResult Function(_InitialImage value)? initialImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res> implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  final ProductEvent _value;
  // ignore: unused_field
  final $Res Function(ProductEvent) _then;
}

/// @nodoc
abstract class _$$_SignUpCopyWith<$Res> {
  factory _$$_SignUpCopyWith(_$_SignUp value, $Res Function(_$_SignUp) then) =
      __$$_SignUpCopyWithImpl<$Res>;
  $Res call({AuthModel login, AssetEntity images});
}

/// @nodoc
class __$$_SignUpCopyWithImpl<$Res> extends _$ProductEventCopyWithImpl<$Res>
    implements _$$_SignUpCopyWith<$Res> {
  __$$_SignUpCopyWithImpl(_$_SignUp _value, $Res Function(_$_SignUp) _then)
      : super(_value, (v) => _then(v as _$_SignUp));

  @override
  _$_SignUp get _value => super._value as _$_SignUp;

  @override
  $Res call({
    Object? login = freezed,
    Object? images = freezed,
  }) {
    return _then(_$_SignUp(
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as AuthModel,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as AssetEntity,
    ));
  }
}

/// @nodoc

class _$_SignUp implements _SignUp {
  _$_SignUp({required this.login, required this.images});

  @override
  final AuthModel login;
  @override
  final AssetEntity images;

  @override
  String toString() {
    return 'ProductEvent.signUp(login: $login, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUp &&
            const DeepCollectionEquality().equals(other.login, login) &&
            const DeepCollectionEquality().equals(other.images, images));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(login),
      const DeepCollectionEquality().hash(images));

  @JsonKey(ignore: true)
  @override
  _$$_SignUpCopyWith<_$_SignUp> get copyWith =>
      __$$_SignUpCopyWithImpl<_$_SignUp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthModel login, AssetEntity images) signUp,
    required TResult Function(BuildContext context, bool addImage) imagePick,
    required TResult Function(ProductDetailModel product) createProduct,
    required TResult Function(AssetEntity assetEntity) removeImage,
    required TResult Function(bool firstPage, Object query, String field,
            bool? isSearch, bool? isList)
        getProductWithSort,
    required TResult Function() searchProductsStart,
    required TResult Function(ComponentModel componentModel) createComponent,
    required TResult Function() getComponent,
    required TResult Function() createCurrency,
    required TResult Function(List<AssetEntity> assetEntity) initialImage,
  }) {
    return signUp(login, images);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images)? signUp,
    TResult Function(BuildContext context, bool addImage)? imagePick,
    TResult Function(ProductDetailModel product)? createProduct,
    TResult Function(AssetEntity assetEntity)? removeImage,
    TResult Function(bool firstPage, Object query, String field, bool? isSearch,
            bool? isList)?
        getProductWithSort,
    TResult Function()? searchProductsStart,
    TResult Function(ComponentModel componentModel)? createComponent,
    TResult Function()? getComponent,
    TResult Function()? createCurrency,
    TResult Function(List<AssetEntity> assetEntity)? initialImage,
  }) {
    return signUp?.call(login, images);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images)? signUp,
    TResult Function(BuildContext context, bool addImage)? imagePick,
    TResult Function(ProductDetailModel product)? createProduct,
    TResult Function(AssetEntity assetEntity)? removeImage,
    TResult Function(bool firstPage, Object query, String field, bool? isSearch,
            bool? isList)?
        getProductWithSort,
    TResult Function()? searchProductsStart,
    TResult Function(ComponentModel componentModel)? createComponent,
    TResult Function()? getComponent,
    TResult Function()? createCurrency,
    TResult Function(List<AssetEntity> assetEntity)? initialImage,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(login, images);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_ImagePick value) imagePick,
    required TResult Function(_CreateProduct value) createProduct,
    required TResult Function(_RemoveImage value) removeImage,
    required TResult Function(_GetProductWithSort value) getProductWithSort,
    required TResult Function(_SearchProductsStart value) searchProductsStart,
    required TResult Function(_CreateComponent value) createComponent,
    required TResult Function(_GetComponent value) getComponent,
    required TResult Function(_CreateCurrency value) createCurrency,
    required TResult Function(_InitialImage value) initialImage,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateProduct value)? createProduct,
    TResult Function(_RemoveImage value)? removeImage,
    TResult Function(_GetProductWithSort value)? getProductWithSort,
    TResult Function(_SearchProductsStart value)? searchProductsStart,
    TResult Function(_CreateComponent value)? createComponent,
    TResult Function(_GetComponent value)? getComponent,
    TResult Function(_CreateCurrency value)? createCurrency,
    TResult Function(_InitialImage value)? initialImage,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateProduct value)? createProduct,
    TResult Function(_RemoveImage value)? removeImage,
    TResult Function(_GetProductWithSort value)? getProductWithSort,
    TResult Function(_SearchProductsStart value)? searchProductsStart,
    TResult Function(_CreateComponent value)? createComponent,
    TResult Function(_GetComponent value)? getComponent,
    TResult Function(_CreateCurrency value)? createCurrency,
    TResult Function(_InitialImage value)? initialImage,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class _SignUp implements ProductEvent {
  factory _SignUp(
      {required final AuthModel login,
      required final AssetEntity images}) = _$_SignUp;

  AuthModel get login;
  AssetEntity get images;
  @JsonKey(ignore: true)
  _$$_SignUpCopyWith<_$_SignUp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ImagePickCopyWith<$Res> {
  factory _$$_ImagePickCopyWith(
          _$_ImagePick value, $Res Function(_$_ImagePick) then) =
      __$$_ImagePickCopyWithImpl<$Res>;
  $Res call({BuildContext context, bool addImage});
}

/// @nodoc
class __$$_ImagePickCopyWithImpl<$Res> extends _$ProductEventCopyWithImpl<$Res>
    implements _$$_ImagePickCopyWith<$Res> {
  __$$_ImagePickCopyWithImpl(
      _$_ImagePick _value, $Res Function(_$_ImagePick) _then)
      : super(_value, (v) => _then(v as _$_ImagePick));

  @override
  _$_ImagePick get _value => super._value as _$_ImagePick;

  @override
  $Res call({
    Object? context = freezed,
    Object? addImage = freezed,
  }) {
    return _then(_$_ImagePick(
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      addImage: addImage == freezed
          ? _value.addImage
          : addImage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ImagePick implements _ImagePick {
  _$_ImagePick({required this.context, required this.addImage});

  @override
  final BuildContext context;
  @override
  final bool addImage;

  @override
  String toString() {
    return 'ProductEvent.imagePick(context: $context, addImage: $addImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImagePick &&
            const DeepCollectionEquality().equals(other.context, context) &&
            const DeepCollectionEquality().equals(other.addImage, addImage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(context),
      const DeepCollectionEquality().hash(addImage));

  @JsonKey(ignore: true)
  @override
  _$$_ImagePickCopyWith<_$_ImagePick> get copyWith =>
      __$$_ImagePickCopyWithImpl<_$_ImagePick>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthModel login, AssetEntity images) signUp,
    required TResult Function(BuildContext context, bool addImage) imagePick,
    required TResult Function(ProductDetailModel product) createProduct,
    required TResult Function(AssetEntity assetEntity) removeImage,
    required TResult Function(bool firstPage, Object query, String field,
            bool? isSearch, bool? isList)
        getProductWithSort,
    required TResult Function() searchProductsStart,
    required TResult Function(ComponentModel componentModel) createComponent,
    required TResult Function() getComponent,
    required TResult Function() createCurrency,
    required TResult Function(List<AssetEntity> assetEntity) initialImage,
  }) {
    return imagePick(context, addImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images)? signUp,
    TResult Function(BuildContext context, bool addImage)? imagePick,
    TResult Function(ProductDetailModel product)? createProduct,
    TResult Function(AssetEntity assetEntity)? removeImage,
    TResult Function(bool firstPage, Object query, String field, bool? isSearch,
            bool? isList)?
        getProductWithSort,
    TResult Function()? searchProductsStart,
    TResult Function(ComponentModel componentModel)? createComponent,
    TResult Function()? getComponent,
    TResult Function()? createCurrency,
    TResult Function(List<AssetEntity> assetEntity)? initialImage,
  }) {
    return imagePick?.call(context, addImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images)? signUp,
    TResult Function(BuildContext context, bool addImage)? imagePick,
    TResult Function(ProductDetailModel product)? createProduct,
    TResult Function(AssetEntity assetEntity)? removeImage,
    TResult Function(bool firstPage, Object query, String field, bool? isSearch,
            bool? isList)?
        getProductWithSort,
    TResult Function()? searchProductsStart,
    TResult Function(ComponentModel componentModel)? createComponent,
    TResult Function()? getComponent,
    TResult Function()? createCurrency,
    TResult Function(List<AssetEntity> assetEntity)? initialImage,
    required TResult orElse(),
  }) {
    if (imagePick != null) {
      return imagePick(context, addImage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_ImagePick value) imagePick,
    required TResult Function(_CreateProduct value) createProduct,
    required TResult Function(_RemoveImage value) removeImage,
    required TResult Function(_GetProductWithSort value) getProductWithSort,
    required TResult Function(_SearchProductsStart value) searchProductsStart,
    required TResult Function(_CreateComponent value) createComponent,
    required TResult Function(_GetComponent value) getComponent,
    required TResult Function(_CreateCurrency value) createCurrency,
    required TResult Function(_InitialImage value) initialImage,
  }) {
    return imagePick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateProduct value)? createProduct,
    TResult Function(_RemoveImage value)? removeImage,
    TResult Function(_GetProductWithSort value)? getProductWithSort,
    TResult Function(_SearchProductsStart value)? searchProductsStart,
    TResult Function(_CreateComponent value)? createComponent,
    TResult Function(_GetComponent value)? getComponent,
    TResult Function(_CreateCurrency value)? createCurrency,
    TResult Function(_InitialImage value)? initialImage,
  }) {
    return imagePick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateProduct value)? createProduct,
    TResult Function(_RemoveImage value)? removeImage,
    TResult Function(_GetProductWithSort value)? getProductWithSort,
    TResult Function(_SearchProductsStart value)? searchProductsStart,
    TResult Function(_CreateComponent value)? createComponent,
    TResult Function(_GetComponent value)? getComponent,
    TResult Function(_CreateCurrency value)? createCurrency,
    TResult Function(_InitialImage value)? initialImage,
    required TResult orElse(),
  }) {
    if (imagePick != null) {
      return imagePick(this);
    }
    return orElse();
  }
}

abstract class _ImagePick implements ProductEvent {
  factory _ImagePick(
      {required final BuildContext context,
      required final bool addImage}) = _$_ImagePick;

  BuildContext get context;
  bool get addImage;
  @JsonKey(ignore: true)
  _$$_ImagePickCopyWith<_$_ImagePick> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CreateProductCopyWith<$Res> {
  factory _$$_CreateProductCopyWith(
          _$_CreateProduct value, $Res Function(_$_CreateProduct) then) =
      __$$_CreateProductCopyWithImpl<$Res>;
  $Res call({ProductDetailModel product});
}

/// @nodoc
class __$$_CreateProductCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res>
    implements _$$_CreateProductCopyWith<$Res> {
  __$$_CreateProductCopyWithImpl(
      _$_CreateProduct _value, $Res Function(_$_CreateProduct) _then)
      : super(_value, (v) => _then(v as _$_CreateProduct));

  @override
  _$_CreateProduct get _value => super._value as _$_CreateProduct;

  @override
  $Res call({
    Object? product = freezed,
  }) {
    return _then(_$_CreateProduct(
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDetailModel,
    ));
  }
}

/// @nodoc

class _$_CreateProduct implements _CreateProduct {
  _$_CreateProduct({required this.product});

  @override
  final ProductDetailModel product;

  @override
  String toString() {
    return 'ProductEvent.createProduct(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateProduct &&
            const DeepCollectionEquality().equals(other.product, product));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(product));

  @JsonKey(ignore: true)
  @override
  _$$_CreateProductCopyWith<_$_CreateProduct> get copyWith =>
      __$$_CreateProductCopyWithImpl<_$_CreateProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthModel login, AssetEntity images) signUp,
    required TResult Function(BuildContext context, bool addImage) imagePick,
    required TResult Function(ProductDetailModel product) createProduct,
    required TResult Function(AssetEntity assetEntity) removeImage,
    required TResult Function(bool firstPage, Object query, String field,
            bool? isSearch, bool? isList)
        getProductWithSort,
    required TResult Function() searchProductsStart,
    required TResult Function(ComponentModel componentModel) createComponent,
    required TResult Function() getComponent,
    required TResult Function() createCurrency,
    required TResult Function(List<AssetEntity> assetEntity) initialImage,
  }) {
    return createProduct(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images)? signUp,
    TResult Function(BuildContext context, bool addImage)? imagePick,
    TResult Function(ProductDetailModel product)? createProduct,
    TResult Function(AssetEntity assetEntity)? removeImage,
    TResult Function(bool firstPage, Object query, String field, bool? isSearch,
            bool? isList)?
        getProductWithSort,
    TResult Function()? searchProductsStart,
    TResult Function(ComponentModel componentModel)? createComponent,
    TResult Function()? getComponent,
    TResult Function()? createCurrency,
    TResult Function(List<AssetEntity> assetEntity)? initialImage,
  }) {
    return createProduct?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images)? signUp,
    TResult Function(BuildContext context, bool addImage)? imagePick,
    TResult Function(ProductDetailModel product)? createProduct,
    TResult Function(AssetEntity assetEntity)? removeImage,
    TResult Function(bool firstPage, Object query, String field, bool? isSearch,
            bool? isList)?
        getProductWithSort,
    TResult Function()? searchProductsStart,
    TResult Function(ComponentModel componentModel)? createComponent,
    TResult Function()? getComponent,
    TResult Function()? createCurrency,
    TResult Function(List<AssetEntity> assetEntity)? initialImage,
    required TResult orElse(),
  }) {
    if (createProduct != null) {
      return createProduct(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_ImagePick value) imagePick,
    required TResult Function(_CreateProduct value) createProduct,
    required TResult Function(_RemoveImage value) removeImage,
    required TResult Function(_GetProductWithSort value) getProductWithSort,
    required TResult Function(_SearchProductsStart value) searchProductsStart,
    required TResult Function(_CreateComponent value) createComponent,
    required TResult Function(_GetComponent value) getComponent,
    required TResult Function(_CreateCurrency value) createCurrency,
    required TResult Function(_InitialImage value) initialImage,
  }) {
    return createProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateProduct value)? createProduct,
    TResult Function(_RemoveImage value)? removeImage,
    TResult Function(_GetProductWithSort value)? getProductWithSort,
    TResult Function(_SearchProductsStart value)? searchProductsStart,
    TResult Function(_CreateComponent value)? createComponent,
    TResult Function(_GetComponent value)? getComponent,
    TResult Function(_CreateCurrency value)? createCurrency,
    TResult Function(_InitialImage value)? initialImage,
  }) {
    return createProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateProduct value)? createProduct,
    TResult Function(_RemoveImage value)? removeImage,
    TResult Function(_GetProductWithSort value)? getProductWithSort,
    TResult Function(_SearchProductsStart value)? searchProductsStart,
    TResult Function(_CreateComponent value)? createComponent,
    TResult Function(_GetComponent value)? getComponent,
    TResult Function(_CreateCurrency value)? createCurrency,
    TResult Function(_InitialImage value)? initialImage,
    required TResult orElse(),
  }) {
    if (createProduct != null) {
      return createProduct(this);
    }
    return orElse();
  }
}

abstract class _CreateProduct implements ProductEvent {
  factory _CreateProduct({required final ProductDetailModel product}) =
      _$_CreateProduct;

  ProductDetailModel get product;
  @JsonKey(ignore: true)
  _$$_CreateProductCopyWith<_$_CreateProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveImageCopyWith<$Res> {
  factory _$$_RemoveImageCopyWith(
          _$_RemoveImage value, $Res Function(_$_RemoveImage) then) =
      __$$_RemoveImageCopyWithImpl<$Res>;
  $Res call({AssetEntity assetEntity});
}

/// @nodoc
class __$$_RemoveImageCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res>
    implements _$$_RemoveImageCopyWith<$Res> {
  __$$_RemoveImageCopyWithImpl(
      _$_RemoveImage _value, $Res Function(_$_RemoveImage) _then)
      : super(_value, (v) => _then(v as _$_RemoveImage));

  @override
  _$_RemoveImage get _value => super._value as _$_RemoveImage;

  @override
  $Res call({
    Object? assetEntity = freezed,
  }) {
    return _then(_$_RemoveImage(
      assetEntity: assetEntity == freezed
          ? _value.assetEntity
          : assetEntity // ignore: cast_nullable_to_non_nullable
              as AssetEntity,
    ));
  }
}

/// @nodoc

class _$_RemoveImage implements _RemoveImage {
  _$_RemoveImage({required this.assetEntity});

  @override
  final AssetEntity assetEntity;

  @override
  String toString() {
    return 'ProductEvent.removeImage(assetEntity: $assetEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveImage &&
            const DeepCollectionEquality()
                .equals(other.assetEntity, assetEntity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(assetEntity));

  @JsonKey(ignore: true)
  @override
  _$$_RemoveImageCopyWith<_$_RemoveImage> get copyWith =>
      __$$_RemoveImageCopyWithImpl<_$_RemoveImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthModel login, AssetEntity images) signUp,
    required TResult Function(BuildContext context, bool addImage) imagePick,
    required TResult Function(ProductDetailModel product) createProduct,
    required TResult Function(AssetEntity assetEntity) removeImage,
    required TResult Function(bool firstPage, Object query, String field,
            bool? isSearch, bool? isList)
        getProductWithSort,
    required TResult Function() searchProductsStart,
    required TResult Function(ComponentModel componentModel) createComponent,
    required TResult Function() getComponent,
    required TResult Function() createCurrency,
    required TResult Function(List<AssetEntity> assetEntity) initialImage,
  }) {
    return removeImage(assetEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images)? signUp,
    TResult Function(BuildContext context, bool addImage)? imagePick,
    TResult Function(ProductDetailModel product)? createProduct,
    TResult Function(AssetEntity assetEntity)? removeImage,
    TResult Function(bool firstPage, Object query, String field, bool? isSearch,
            bool? isList)?
        getProductWithSort,
    TResult Function()? searchProductsStart,
    TResult Function(ComponentModel componentModel)? createComponent,
    TResult Function()? getComponent,
    TResult Function()? createCurrency,
    TResult Function(List<AssetEntity> assetEntity)? initialImage,
  }) {
    return removeImage?.call(assetEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images)? signUp,
    TResult Function(BuildContext context, bool addImage)? imagePick,
    TResult Function(ProductDetailModel product)? createProduct,
    TResult Function(AssetEntity assetEntity)? removeImage,
    TResult Function(bool firstPage, Object query, String field, bool? isSearch,
            bool? isList)?
        getProductWithSort,
    TResult Function()? searchProductsStart,
    TResult Function(ComponentModel componentModel)? createComponent,
    TResult Function()? getComponent,
    TResult Function()? createCurrency,
    TResult Function(List<AssetEntity> assetEntity)? initialImage,
    required TResult orElse(),
  }) {
    if (removeImage != null) {
      return removeImage(assetEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_ImagePick value) imagePick,
    required TResult Function(_CreateProduct value) createProduct,
    required TResult Function(_RemoveImage value) removeImage,
    required TResult Function(_GetProductWithSort value) getProductWithSort,
    required TResult Function(_SearchProductsStart value) searchProductsStart,
    required TResult Function(_CreateComponent value) createComponent,
    required TResult Function(_GetComponent value) getComponent,
    required TResult Function(_CreateCurrency value) createCurrency,
    required TResult Function(_InitialImage value) initialImage,
  }) {
    return removeImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateProduct value)? createProduct,
    TResult Function(_RemoveImage value)? removeImage,
    TResult Function(_GetProductWithSort value)? getProductWithSort,
    TResult Function(_SearchProductsStart value)? searchProductsStart,
    TResult Function(_CreateComponent value)? createComponent,
    TResult Function(_GetComponent value)? getComponent,
    TResult Function(_CreateCurrency value)? createCurrency,
    TResult Function(_InitialImage value)? initialImage,
  }) {
    return removeImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateProduct value)? createProduct,
    TResult Function(_RemoveImage value)? removeImage,
    TResult Function(_GetProductWithSort value)? getProductWithSort,
    TResult Function(_SearchProductsStart value)? searchProductsStart,
    TResult Function(_CreateComponent value)? createComponent,
    TResult Function(_GetComponent value)? getComponent,
    TResult Function(_CreateCurrency value)? createCurrency,
    TResult Function(_InitialImage value)? initialImage,
    required TResult orElse(),
  }) {
    if (removeImage != null) {
      return removeImage(this);
    }
    return orElse();
  }
}

abstract class _RemoveImage implements ProductEvent {
  factory _RemoveImage({required final AssetEntity assetEntity}) =
      _$_RemoveImage;

  AssetEntity get assetEntity;
  @JsonKey(ignore: true)
  _$$_RemoveImageCopyWith<_$_RemoveImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetProductWithSortCopyWith<$Res> {
  factory _$$_GetProductWithSortCopyWith(_$_GetProductWithSort value,
          $Res Function(_$_GetProductWithSort) then) =
      __$$_GetProductWithSortCopyWithImpl<$Res>;
  $Res call(
      {bool firstPage,
      Object query,
      String field,
      bool? isSearch,
      bool? isList});
}

/// @nodoc
class __$$_GetProductWithSortCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res>
    implements _$$_GetProductWithSortCopyWith<$Res> {
  __$$_GetProductWithSortCopyWithImpl(
      _$_GetProductWithSort _value, $Res Function(_$_GetProductWithSort) _then)
      : super(_value, (v) => _then(v as _$_GetProductWithSort));

  @override
  _$_GetProductWithSort get _value => super._value as _$_GetProductWithSort;

  @override
  $Res call({
    Object? firstPage = freezed,
    Object? query = freezed,
    Object? field = freezed,
    Object? isSearch = freezed,
    Object? isList = freezed,
  }) {
    return _then(_$_GetProductWithSort(
      firstPage: firstPage == freezed
          ? _value.firstPage
          : firstPage // ignore: cast_nullable_to_non_nullable
              as bool,
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as Object,
      field: field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      isSearch: isSearch == freezed
          ? _value.isSearch
          : isSearch // ignore: cast_nullable_to_non_nullable
              as bool?,
      isList: isList == freezed
          ? _value.isList
          : isList // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_GetProductWithSort implements _GetProductWithSort {
  _$_GetProductWithSort(
      {required this.firstPage,
      required this.query,
      required this.field,
      this.isSearch,
      this.isList});

  @override
  final bool firstPage;
  @override
  final Object query;
  @override
  final String field;
  @override
  final bool? isSearch;
  @override
  final bool? isList;

  @override
  String toString() {
    return 'ProductEvent.getProductWithSort(firstPage: $firstPage, query: $query, field: $field, isSearch: $isSearch, isList: $isList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetProductWithSort &&
            const DeepCollectionEquality().equals(other.firstPage, firstPage) &&
            const DeepCollectionEquality().equals(other.query, query) &&
            const DeepCollectionEquality().equals(other.field, field) &&
            const DeepCollectionEquality().equals(other.isSearch, isSearch) &&
            const DeepCollectionEquality().equals(other.isList, isList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(firstPage),
      const DeepCollectionEquality().hash(query),
      const DeepCollectionEquality().hash(field),
      const DeepCollectionEquality().hash(isSearch),
      const DeepCollectionEquality().hash(isList));

  @JsonKey(ignore: true)
  @override
  _$$_GetProductWithSortCopyWith<_$_GetProductWithSort> get copyWith =>
      __$$_GetProductWithSortCopyWithImpl<_$_GetProductWithSort>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthModel login, AssetEntity images) signUp,
    required TResult Function(BuildContext context, bool addImage) imagePick,
    required TResult Function(ProductDetailModel product) createProduct,
    required TResult Function(AssetEntity assetEntity) removeImage,
    required TResult Function(bool firstPage, Object query, String field,
            bool? isSearch, bool? isList)
        getProductWithSort,
    required TResult Function() searchProductsStart,
    required TResult Function(ComponentModel componentModel) createComponent,
    required TResult Function() getComponent,
    required TResult Function() createCurrency,
    required TResult Function(List<AssetEntity> assetEntity) initialImage,
  }) {
    return getProductWithSort(firstPage, query, field, isSearch, isList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images)? signUp,
    TResult Function(BuildContext context, bool addImage)? imagePick,
    TResult Function(ProductDetailModel product)? createProduct,
    TResult Function(AssetEntity assetEntity)? removeImage,
    TResult Function(bool firstPage, Object query, String field, bool? isSearch,
            bool? isList)?
        getProductWithSort,
    TResult Function()? searchProductsStart,
    TResult Function(ComponentModel componentModel)? createComponent,
    TResult Function()? getComponent,
    TResult Function()? createCurrency,
    TResult Function(List<AssetEntity> assetEntity)? initialImage,
  }) {
    return getProductWithSort?.call(firstPage, query, field, isSearch, isList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images)? signUp,
    TResult Function(BuildContext context, bool addImage)? imagePick,
    TResult Function(ProductDetailModel product)? createProduct,
    TResult Function(AssetEntity assetEntity)? removeImage,
    TResult Function(bool firstPage, Object query, String field, bool? isSearch,
            bool? isList)?
        getProductWithSort,
    TResult Function()? searchProductsStart,
    TResult Function(ComponentModel componentModel)? createComponent,
    TResult Function()? getComponent,
    TResult Function()? createCurrency,
    TResult Function(List<AssetEntity> assetEntity)? initialImage,
    required TResult orElse(),
  }) {
    if (getProductWithSort != null) {
      return getProductWithSort(firstPage, query, field, isSearch, isList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_ImagePick value) imagePick,
    required TResult Function(_CreateProduct value) createProduct,
    required TResult Function(_RemoveImage value) removeImage,
    required TResult Function(_GetProductWithSort value) getProductWithSort,
    required TResult Function(_SearchProductsStart value) searchProductsStart,
    required TResult Function(_CreateComponent value) createComponent,
    required TResult Function(_GetComponent value) getComponent,
    required TResult Function(_CreateCurrency value) createCurrency,
    required TResult Function(_InitialImage value) initialImage,
  }) {
    return getProductWithSort(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateProduct value)? createProduct,
    TResult Function(_RemoveImage value)? removeImage,
    TResult Function(_GetProductWithSort value)? getProductWithSort,
    TResult Function(_SearchProductsStart value)? searchProductsStart,
    TResult Function(_CreateComponent value)? createComponent,
    TResult Function(_GetComponent value)? getComponent,
    TResult Function(_CreateCurrency value)? createCurrency,
    TResult Function(_InitialImage value)? initialImage,
  }) {
    return getProductWithSort?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateProduct value)? createProduct,
    TResult Function(_RemoveImage value)? removeImage,
    TResult Function(_GetProductWithSort value)? getProductWithSort,
    TResult Function(_SearchProductsStart value)? searchProductsStart,
    TResult Function(_CreateComponent value)? createComponent,
    TResult Function(_GetComponent value)? getComponent,
    TResult Function(_CreateCurrency value)? createCurrency,
    TResult Function(_InitialImage value)? initialImage,
    required TResult orElse(),
  }) {
    if (getProductWithSort != null) {
      return getProductWithSort(this);
    }
    return orElse();
  }
}

abstract class _GetProductWithSort implements ProductEvent {
  factory _GetProductWithSort(
      {required final bool firstPage,
      required final Object query,
      required final String field,
      final bool? isSearch,
      final bool? isList}) = _$_GetProductWithSort;

  bool get firstPage;
  Object get query;
  String get field;
  bool? get isSearch;
  bool? get isList;
  @JsonKey(ignore: true)
  _$$_GetProductWithSortCopyWith<_$_GetProductWithSort> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchProductsStartCopyWith<$Res> {
  factory _$$_SearchProductsStartCopyWith(_$_SearchProductsStart value,
          $Res Function(_$_SearchProductsStart) then) =
      __$$_SearchProductsStartCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchProductsStartCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res>
    implements _$$_SearchProductsStartCopyWith<$Res> {
  __$$_SearchProductsStartCopyWithImpl(_$_SearchProductsStart _value,
      $Res Function(_$_SearchProductsStart) _then)
      : super(_value, (v) => _then(v as _$_SearchProductsStart));

  @override
  _$_SearchProductsStart get _value => super._value as _$_SearchProductsStart;
}

/// @nodoc

class _$_SearchProductsStart implements _SearchProductsStart {
  _$_SearchProductsStart();

  @override
  String toString() {
    return 'ProductEvent.searchProductsStart()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SearchProductsStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthModel login, AssetEntity images) signUp,
    required TResult Function(BuildContext context, bool addImage) imagePick,
    required TResult Function(ProductDetailModel product) createProduct,
    required TResult Function(AssetEntity assetEntity) removeImage,
    required TResult Function(bool firstPage, Object query, String field,
            bool? isSearch, bool? isList)
        getProductWithSort,
    required TResult Function() searchProductsStart,
    required TResult Function(ComponentModel componentModel) createComponent,
    required TResult Function() getComponent,
    required TResult Function() createCurrency,
    required TResult Function(List<AssetEntity> assetEntity) initialImage,
  }) {
    return searchProductsStart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images)? signUp,
    TResult Function(BuildContext context, bool addImage)? imagePick,
    TResult Function(ProductDetailModel product)? createProduct,
    TResult Function(AssetEntity assetEntity)? removeImage,
    TResult Function(bool firstPage, Object query, String field, bool? isSearch,
            bool? isList)?
        getProductWithSort,
    TResult Function()? searchProductsStart,
    TResult Function(ComponentModel componentModel)? createComponent,
    TResult Function()? getComponent,
    TResult Function()? createCurrency,
    TResult Function(List<AssetEntity> assetEntity)? initialImage,
  }) {
    return searchProductsStart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images)? signUp,
    TResult Function(BuildContext context, bool addImage)? imagePick,
    TResult Function(ProductDetailModel product)? createProduct,
    TResult Function(AssetEntity assetEntity)? removeImage,
    TResult Function(bool firstPage, Object query, String field, bool? isSearch,
            bool? isList)?
        getProductWithSort,
    TResult Function()? searchProductsStart,
    TResult Function(ComponentModel componentModel)? createComponent,
    TResult Function()? getComponent,
    TResult Function()? createCurrency,
    TResult Function(List<AssetEntity> assetEntity)? initialImage,
    required TResult orElse(),
  }) {
    if (searchProductsStart != null) {
      return searchProductsStart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_ImagePick value) imagePick,
    required TResult Function(_CreateProduct value) createProduct,
    required TResult Function(_RemoveImage value) removeImage,
    required TResult Function(_GetProductWithSort value) getProductWithSort,
    required TResult Function(_SearchProductsStart value) searchProductsStart,
    required TResult Function(_CreateComponent value) createComponent,
    required TResult Function(_GetComponent value) getComponent,
    required TResult Function(_CreateCurrency value) createCurrency,
    required TResult Function(_InitialImage value) initialImage,
  }) {
    return searchProductsStart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateProduct value)? createProduct,
    TResult Function(_RemoveImage value)? removeImage,
    TResult Function(_GetProductWithSort value)? getProductWithSort,
    TResult Function(_SearchProductsStart value)? searchProductsStart,
    TResult Function(_CreateComponent value)? createComponent,
    TResult Function(_GetComponent value)? getComponent,
    TResult Function(_CreateCurrency value)? createCurrency,
    TResult Function(_InitialImage value)? initialImage,
  }) {
    return searchProductsStart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateProduct value)? createProduct,
    TResult Function(_RemoveImage value)? removeImage,
    TResult Function(_GetProductWithSort value)? getProductWithSort,
    TResult Function(_SearchProductsStart value)? searchProductsStart,
    TResult Function(_CreateComponent value)? createComponent,
    TResult Function(_GetComponent value)? getComponent,
    TResult Function(_CreateCurrency value)? createCurrency,
    TResult Function(_InitialImage value)? initialImage,
    required TResult orElse(),
  }) {
    if (searchProductsStart != null) {
      return searchProductsStart(this);
    }
    return orElse();
  }
}

abstract class _SearchProductsStart implements ProductEvent {
  factory _SearchProductsStart() = _$_SearchProductsStart;
}

/// @nodoc
abstract class _$$_CreateComponentCopyWith<$Res> {
  factory _$$_CreateComponentCopyWith(
          _$_CreateComponent value, $Res Function(_$_CreateComponent) then) =
      __$$_CreateComponentCopyWithImpl<$Res>;
  $Res call({ComponentModel componentModel});
}

/// @nodoc
class __$$_CreateComponentCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res>
    implements _$$_CreateComponentCopyWith<$Res> {
  __$$_CreateComponentCopyWithImpl(
      _$_CreateComponent _value, $Res Function(_$_CreateComponent) _then)
      : super(_value, (v) => _then(v as _$_CreateComponent));

  @override
  _$_CreateComponent get _value => super._value as _$_CreateComponent;

  @override
  $Res call({
    Object? componentModel = freezed,
  }) {
    return _then(_$_CreateComponent(
      componentModel: componentModel == freezed
          ? _value.componentModel
          : componentModel // ignore: cast_nullable_to_non_nullable
              as ComponentModel,
    ));
  }
}

/// @nodoc

class _$_CreateComponent implements _CreateComponent {
  _$_CreateComponent({required this.componentModel});

  @override
  final ComponentModel componentModel;

  @override
  String toString() {
    return 'ProductEvent.createComponent(componentModel: $componentModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateComponent &&
            const DeepCollectionEquality()
                .equals(other.componentModel, componentModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(componentModel));

  @JsonKey(ignore: true)
  @override
  _$$_CreateComponentCopyWith<_$_CreateComponent> get copyWith =>
      __$$_CreateComponentCopyWithImpl<_$_CreateComponent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthModel login, AssetEntity images) signUp,
    required TResult Function(BuildContext context, bool addImage) imagePick,
    required TResult Function(ProductDetailModel product) createProduct,
    required TResult Function(AssetEntity assetEntity) removeImage,
    required TResult Function(bool firstPage, Object query, String field,
            bool? isSearch, bool? isList)
        getProductWithSort,
    required TResult Function() searchProductsStart,
    required TResult Function(ComponentModel componentModel) createComponent,
    required TResult Function() getComponent,
    required TResult Function() createCurrency,
    required TResult Function(List<AssetEntity> assetEntity) initialImage,
  }) {
    return createComponent(componentModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images)? signUp,
    TResult Function(BuildContext context, bool addImage)? imagePick,
    TResult Function(ProductDetailModel product)? createProduct,
    TResult Function(AssetEntity assetEntity)? removeImage,
    TResult Function(bool firstPage, Object query, String field, bool? isSearch,
            bool? isList)?
        getProductWithSort,
    TResult Function()? searchProductsStart,
    TResult Function(ComponentModel componentModel)? createComponent,
    TResult Function()? getComponent,
    TResult Function()? createCurrency,
    TResult Function(List<AssetEntity> assetEntity)? initialImage,
  }) {
    return createComponent?.call(componentModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images)? signUp,
    TResult Function(BuildContext context, bool addImage)? imagePick,
    TResult Function(ProductDetailModel product)? createProduct,
    TResult Function(AssetEntity assetEntity)? removeImage,
    TResult Function(bool firstPage, Object query, String field, bool? isSearch,
            bool? isList)?
        getProductWithSort,
    TResult Function()? searchProductsStart,
    TResult Function(ComponentModel componentModel)? createComponent,
    TResult Function()? getComponent,
    TResult Function()? createCurrency,
    TResult Function(List<AssetEntity> assetEntity)? initialImage,
    required TResult orElse(),
  }) {
    if (createComponent != null) {
      return createComponent(componentModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_ImagePick value) imagePick,
    required TResult Function(_CreateProduct value) createProduct,
    required TResult Function(_RemoveImage value) removeImage,
    required TResult Function(_GetProductWithSort value) getProductWithSort,
    required TResult Function(_SearchProductsStart value) searchProductsStart,
    required TResult Function(_CreateComponent value) createComponent,
    required TResult Function(_GetComponent value) getComponent,
    required TResult Function(_CreateCurrency value) createCurrency,
    required TResult Function(_InitialImage value) initialImage,
  }) {
    return createComponent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateProduct value)? createProduct,
    TResult Function(_RemoveImage value)? removeImage,
    TResult Function(_GetProductWithSort value)? getProductWithSort,
    TResult Function(_SearchProductsStart value)? searchProductsStart,
    TResult Function(_CreateComponent value)? createComponent,
    TResult Function(_GetComponent value)? getComponent,
    TResult Function(_CreateCurrency value)? createCurrency,
    TResult Function(_InitialImage value)? initialImage,
  }) {
    return createComponent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateProduct value)? createProduct,
    TResult Function(_RemoveImage value)? removeImage,
    TResult Function(_GetProductWithSort value)? getProductWithSort,
    TResult Function(_SearchProductsStart value)? searchProductsStart,
    TResult Function(_CreateComponent value)? createComponent,
    TResult Function(_GetComponent value)? getComponent,
    TResult Function(_CreateCurrency value)? createCurrency,
    TResult Function(_InitialImage value)? initialImage,
    required TResult orElse(),
  }) {
    if (createComponent != null) {
      return createComponent(this);
    }
    return orElse();
  }
}

abstract class _CreateComponent implements ProductEvent {
  factory _CreateComponent({required final ComponentModel componentModel}) =
      _$_CreateComponent;

  ComponentModel get componentModel;
  @JsonKey(ignore: true)
  _$$_CreateComponentCopyWith<_$_CreateComponent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetComponentCopyWith<$Res> {
  factory _$$_GetComponentCopyWith(
          _$_GetComponent value, $Res Function(_$_GetComponent) then) =
      __$$_GetComponentCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetComponentCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res>
    implements _$$_GetComponentCopyWith<$Res> {
  __$$_GetComponentCopyWithImpl(
      _$_GetComponent _value, $Res Function(_$_GetComponent) _then)
      : super(_value, (v) => _then(v as _$_GetComponent));

  @override
  _$_GetComponent get _value => super._value as _$_GetComponent;
}

/// @nodoc

class _$_GetComponent implements _GetComponent {
  _$_GetComponent();

  @override
  String toString() {
    return 'ProductEvent.getComponent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetComponent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthModel login, AssetEntity images) signUp,
    required TResult Function(BuildContext context, bool addImage) imagePick,
    required TResult Function(ProductDetailModel product) createProduct,
    required TResult Function(AssetEntity assetEntity) removeImage,
    required TResult Function(bool firstPage, Object query, String field,
            bool? isSearch, bool? isList)
        getProductWithSort,
    required TResult Function() searchProductsStart,
    required TResult Function(ComponentModel componentModel) createComponent,
    required TResult Function() getComponent,
    required TResult Function() createCurrency,
    required TResult Function(List<AssetEntity> assetEntity) initialImage,
  }) {
    return getComponent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images)? signUp,
    TResult Function(BuildContext context, bool addImage)? imagePick,
    TResult Function(ProductDetailModel product)? createProduct,
    TResult Function(AssetEntity assetEntity)? removeImage,
    TResult Function(bool firstPage, Object query, String field, bool? isSearch,
            bool? isList)?
        getProductWithSort,
    TResult Function()? searchProductsStart,
    TResult Function(ComponentModel componentModel)? createComponent,
    TResult Function()? getComponent,
    TResult Function()? createCurrency,
    TResult Function(List<AssetEntity> assetEntity)? initialImage,
  }) {
    return getComponent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images)? signUp,
    TResult Function(BuildContext context, bool addImage)? imagePick,
    TResult Function(ProductDetailModel product)? createProduct,
    TResult Function(AssetEntity assetEntity)? removeImage,
    TResult Function(bool firstPage, Object query, String field, bool? isSearch,
            bool? isList)?
        getProductWithSort,
    TResult Function()? searchProductsStart,
    TResult Function(ComponentModel componentModel)? createComponent,
    TResult Function()? getComponent,
    TResult Function()? createCurrency,
    TResult Function(List<AssetEntity> assetEntity)? initialImage,
    required TResult orElse(),
  }) {
    if (getComponent != null) {
      return getComponent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_ImagePick value) imagePick,
    required TResult Function(_CreateProduct value) createProduct,
    required TResult Function(_RemoveImage value) removeImage,
    required TResult Function(_GetProductWithSort value) getProductWithSort,
    required TResult Function(_SearchProductsStart value) searchProductsStart,
    required TResult Function(_CreateComponent value) createComponent,
    required TResult Function(_GetComponent value) getComponent,
    required TResult Function(_CreateCurrency value) createCurrency,
    required TResult Function(_InitialImage value) initialImage,
  }) {
    return getComponent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateProduct value)? createProduct,
    TResult Function(_RemoveImage value)? removeImage,
    TResult Function(_GetProductWithSort value)? getProductWithSort,
    TResult Function(_SearchProductsStart value)? searchProductsStart,
    TResult Function(_CreateComponent value)? createComponent,
    TResult Function(_GetComponent value)? getComponent,
    TResult Function(_CreateCurrency value)? createCurrency,
    TResult Function(_InitialImage value)? initialImage,
  }) {
    return getComponent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateProduct value)? createProduct,
    TResult Function(_RemoveImage value)? removeImage,
    TResult Function(_GetProductWithSort value)? getProductWithSort,
    TResult Function(_SearchProductsStart value)? searchProductsStart,
    TResult Function(_CreateComponent value)? createComponent,
    TResult Function(_GetComponent value)? getComponent,
    TResult Function(_CreateCurrency value)? createCurrency,
    TResult Function(_InitialImage value)? initialImage,
    required TResult orElse(),
  }) {
    if (getComponent != null) {
      return getComponent(this);
    }
    return orElse();
  }
}

abstract class _GetComponent implements ProductEvent {
  factory _GetComponent() = _$_GetComponent;
}

/// @nodoc
abstract class _$$_CreateCurrencyCopyWith<$Res> {
  factory _$$_CreateCurrencyCopyWith(
          _$_CreateCurrency value, $Res Function(_$_CreateCurrency) then) =
      __$$_CreateCurrencyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CreateCurrencyCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res>
    implements _$$_CreateCurrencyCopyWith<$Res> {
  __$$_CreateCurrencyCopyWithImpl(
      _$_CreateCurrency _value, $Res Function(_$_CreateCurrency) _then)
      : super(_value, (v) => _then(v as _$_CreateCurrency));

  @override
  _$_CreateCurrency get _value => super._value as _$_CreateCurrency;
}

/// @nodoc

class _$_CreateCurrency implements _CreateCurrency {
  _$_CreateCurrency();

  @override
  String toString() {
    return 'ProductEvent.createCurrency()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CreateCurrency);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthModel login, AssetEntity images) signUp,
    required TResult Function(BuildContext context, bool addImage) imagePick,
    required TResult Function(ProductDetailModel product) createProduct,
    required TResult Function(AssetEntity assetEntity) removeImage,
    required TResult Function(bool firstPage, Object query, String field,
            bool? isSearch, bool? isList)
        getProductWithSort,
    required TResult Function() searchProductsStart,
    required TResult Function(ComponentModel componentModel) createComponent,
    required TResult Function() getComponent,
    required TResult Function() createCurrency,
    required TResult Function(List<AssetEntity> assetEntity) initialImage,
  }) {
    return createCurrency();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images)? signUp,
    TResult Function(BuildContext context, bool addImage)? imagePick,
    TResult Function(ProductDetailModel product)? createProduct,
    TResult Function(AssetEntity assetEntity)? removeImage,
    TResult Function(bool firstPage, Object query, String field, bool? isSearch,
            bool? isList)?
        getProductWithSort,
    TResult Function()? searchProductsStart,
    TResult Function(ComponentModel componentModel)? createComponent,
    TResult Function()? getComponent,
    TResult Function()? createCurrency,
    TResult Function(List<AssetEntity> assetEntity)? initialImage,
  }) {
    return createCurrency?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images)? signUp,
    TResult Function(BuildContext context, bool addImage)? imagePick,
    TResult Function(ProductDetailModel product)? createProduct,
    TResult Function(AssetEntity assetEntity)? removeImage,
    TResult Function(bool firstPage, Object query, String field, bool? isSearch,
            bool? isList)?
        getProductWithSort,
    TResult Function()? searchProductsStart,
    TResult Function(ComponentModel componentModel)? createComponent,
    TResult Function()? getComponent,
    TResult Function()? createCurrency,
    TResult Function(List<AssetEntity> assetEntity)? initialImage,
    required TResult orElse(),
  }) {
    if (createCurrency != null) {
      return createCurrency();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_ImagePick value) imagePick,
    required TResult Function(_CreateProduct value) createProduct,
    required TResult Function(_RemoveImage value) removeImage,
    required TResult Function(_GetProductWithSort value) getProductWithSort,
    required TResult Function(_SearchProductsStart value) searchProductsStart,
    required TResult Function(_CreateComponent value) createComponent,
    required TResult Function(_GetComponent value) getComponent,
    required TResult Function(_CreateCurrency value) createCurrency,
    required TResult Function(_InitialImage value) initialImage,
  }) {
    return createCurrency(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateProduct value)? createProduct,
    TResult Function(_RemoveImage value)? removeImage,
    TResult Function(_GetProductWithSort value)? getProductWithSort,
    TResult Function(_SearchProductsStart value)? searchProductsStart,
    TResult Function(_CreateComponent value)? createComponent,
    TResult Function(_GetComponent value)? getComponent,
    TResult Function(_CreateCurrency value)? createCurrency,
    TResult Function(_InitialImage value)? initialImage,
  }) {
    return createCurrency?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateProduct value)? createProduct,
    TResult Function(_RemoveImage value)? removeImage,
    TResult Function(_GetProductWithSort value)? getProductWithSort,
    TResult Function(_SearchProductsStart value)? searchProductsStart,
    TResult Function(_CreateComponent value)? createComponent,
    TResult Function(_GetComponent value)? getComponent,
    TResult Function(_CreateCurrency value)? createCurrency,
    TResult Function(_InitialImage value)? initialImage,
    required TResult orElse(),
  }) {
    if (createCurrency != null) {
      return createCurrency(this);
    }
    return orElse();
  }
}

abstract class _CreateCurrency implements ProductEvent {
  factory _CreateCurrency() = _$_CreateCurrency;
}

/// @nodoc
abstract class _$$_InitialImageCopyWith<$Res> {
  factory _$$_InitialImageCopyWith(
          _$_InitialImage value, $Res Function(_$_InitialImage) then) =
      __$$_InitialImageCopyWithImpl<$Res>;
  $Res call({List<AssetEntity> assetEntity});
}

/// @nodoc
class __$$_InitialImageCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res>
    implements _$$_InitialImageCopyWith<$Res> {
  __$$_InitialImageCopyWithImpl(
      _$_InitialImage _value, $Res Function(_$_InitialImage) _then)
      : super(_value, (v) => _then(v as _$_InitialImage));

  @override
  _$_InitialImage get _value => super._value as _$_InitialImage;

  @override
  $Res call({
    Object? assetEntity = freezed,
  }) {
    return _then(_$_InitialImage(
      assetEntity: assetEntity == freezed
          ? _value._assetEntity
          : assetEntity // ignore: cast_nullable_to_non_nullable
              as List<AssetEntity>,
    ));
  }
}

/// @nodoc

class _$_InitialImage implements _InitialImage {
  _$_InitialImage({required final List<AssetEntity> assetEntity})
      : _assetEntity = assetEntity;

  final List<AssetEntity> _assetEntity;
  @override
  List<AssetEntity> get assetEntity {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assetEntity);
  }

  @override
  String toString() {
    return 'ProductEvent.initialImage(assetEntity: $assetEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitialImage &&
            const DeepCollectionEquality()
                .equals(other._assetEntity, _assetEntity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_assetEntity));

  @JsonKey(ignore: true)
  @override
  _$$_InitialImageCopyWith<_$_InitialImage> get copyWith =>
      __$$_InitialImageCopyWithImpl<_$_InitialImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthModel login, AssetEntity images) signUp,
    required TResult Function(BuildContext context, bool addImage) imagePick,
    required TResult Function(ProductDetailModel product) createProduct,
    required TResult Function(AssetEntity assetEntity) removeImage,
    required TResult Function(bool firstPage, Object query, String field,
            bool? isSearch, bool? isList)
        getProductWithSort,
    required TResult Function() searchProductsStart,
    required TResult Function(ComponentModel componentModel) createComponent,
    required TResult Function() getComponent,
    required TResult Function() createCurrency,
    required TResult Function(List<AssetEntity> assetEntity) initialImage,
  }) {
    return initialImage(assetEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images)? signUp,
    TResult Function(BuildContext context, bool addImage)? imagePick,
    TResult Function(ProductDetailModel product)? createProduct,
    TResult Function(AssetEntity assetEntity)? removeImage,
    TResult Function(bool firstPage, Object query, String field, bool? isSearch,
            bool? isList)?
        getProductWithSort,
    TResult Function()? searchProductsStart,
    TResult Function(ComponentModel componentModel)? createComponent,
    TResult Function()? getComponent,
    TResult Function()? createCurrency,
    TResult Function(List<AssetEntity> assetEntity)? initialImage,
  }) {
    return initialImage?.call(assetEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images)? signUp,
    TResult Function(BuildContext context, bool addImage)? imagePick,
    TResult Function(ProductDetailModel product)? createProduct,
    TResult Function(AssetEntity assetEntity)? removeImage,
    TResult Function(bool firstPage, Object query, String field, bool? isSearch,
            bool? isList)?
        getProductWithSort,
    TResult Function()? searchProductsStart,
    TResult Function(ComponentModel componentModel)? createComponent,
    TResult Function()? getComponent,
    TResult Function()? createCurrency,
    TResult Function(List<AssetEntity> assetEntity)? initialImage,
    required TResult orElse(),
  }) {
    if (initialImage != null) {
      return initialImage(assetEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_ImagePick value) imagePick,
    required TResult Function(_CreateProduct value) createProduct,
    required TResult Function(_RemoveImage value) removeImage,
    required TResult Function(_GetProductWithSort value) getProductWithSort,
    required TResult Function(_SearchProductsStart value) searchProductsStart,
    required TResult Function(_CreateComponent value) createComponent,
    required TResult Function(_GetComponent value) getComponent,
    required TResult Function(_CreateCurrency value) createCurrency,
    required TResult Function(_InitialImage value) initialImage,
  }) {
    return initialImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateProduct value)? createProduct,
    TResult Function(_RemoveImage value)? removeImage,
    TResult Function(_GetProductWithSort value)? getProductWithSort,
    TResult Function(_SearchProductsStart value)? searchProductsStart,
    TResult Function(_CreateComponent value)? createComponent,
    TResult Function(_GetComponent value)? getComponent,
    TResult Function(_CreateCurrency value)? createCurrency,
    TResult Function(_InitialImage value)? initialImage,
  }) {
    return initialImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateProduct value)? createProduct,
    TResult Function(_RemoveImage value)? removeImage,
    TResult Function(_GetProductWithSort value)? getProductWithSort,
    TResult Function(_SearchProductsStart value)? searchProductsStart,
    TResult Function(_CreateComponent value)? createComponent,
    TResult Function(_GetComponent value)? getComponent,
    TResult Function(_CreateCurrency value)? createCurrency,
    TResult Function(_InitialImage value)? initialImage,
    required TResult orElse(),
  }) {
    if (initialImage != null) {
      return initialImage(this);
    }
    return orElse();
  }
}

abstract class _InitialImage implements ProductEvent {
  factory _InitialImage({required final List<AssetEntity> assetEntity}) =
      _$_InitialImage;

  List<AssetEntity> get assetEntity;
  @JsonKey(ignore: true)
  _$$_InitialImageCopyWith<_$_InitialImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductState {
  UserModel? get userModel => throw _privateConstructorUsedError;
  List<AssetEntity> get assets => throw _privateConstructorUsedError;
  bool get emptyImage => throw _privateConstructorUsedError;
  bool get emptyCategories => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  List<DocumentSnapshot<Object?>> get allDocumentList =>
      throw _privateConstructorUsedError;
  bool get noMoreData => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  bool get searching => throw _privateConstructorUsedError;
  bool get deleteImage => throw _privateConstructorUsedError;
  bool get successCreateComponent => throw _privateConstructorUsedError;
  bool get emptyUnit => throw _privateConstructorUsedError;
  List<ComponentModel> get components => throw _privateConstructorUsedError;
  List<ProductDetailModel> get products => throw _privateConstructorUsedError;
  List<DocumentSnapshot<Object?>> get searchDocumentList =>
      throw _privateConstructorUsedError;
  List<ProductDetailModel> get searchProducts =>
      throw _privateConstructorUsedError;
  bool get isInitial => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductStateCopyWith<ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res>;
  $Res call(
      {UserModel? userModel,
      List<AssetEntity> assets,
      bool emptyImage,
      bool emptyCategories,
      bool success,
      List<DocumentSnapshot<Object?>> allDocumentList,
      bool noMoreData,
      bool error,
      bool searching,
      bool deleteImage,
      bool successCreateComponent,
      bool emptyUnit,
      List<ComponentModel> components,
      List<ProductDetailModel> products,
      List<DocumentSnapshot<Object?>> searchDocumentList,
      List<ProductDetailModel> searchProducts,
      bool isInitial});
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res> implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  final ProductState _value;
  // ignore: unused_field
  final $Res Function(ProductState) _then;

  @override
  $Res call({
    Object? userModel = freezed,
    Object? assets = freezed,
    Object? emptyImage = freezed,
    Object? emptyCategories = freezed,
    Object? success = freezed,
    Object? allDocumentList = freezed,
    Object? noMoreData = freezed,
    Object? error = freezed,
    Object? searching = freezed,
    Object? deleteImage = freezed,
    Object? successCreateComponent = freezed,
    Object? emptyUnit = freezed,
    Object? components = freezed,
    Object? products = freezed,
    Object? searchDocumentList = freezed,
    Object? searchProducts = freezed,
    Object? isInitial = freezed,
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
      emptyCategories: emptyCategories == freezed
          ? _value.emptyCategories
          : emptyCategories // ignore: cast_nullable_to_non_nullable
              as bool,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      allDocumentList: allDocumentList == freezed
          ? _value.allDocumentList
          : allDocumentList // ignore: cast_nullable_to_non_nullable
              as List<DocumentSnapshot<Object?>>,
      noMoreData: noMoreData == freezed
          ? _value.noMoreData
          : noMoreData // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      searching: searching == freezed
          ? _value.searching
          : searching // ignore: cast_nullable_to_non_nullable
              as bool,
      deleteImage: deleteImage == freezed
          ? _value.deleteImage
          : deleteImage // ignore: cast_nullable_to_non_nullable
              as bool,
      successCreateComponent: successCreateComponent == freezed
          ? _value.successCreateComponent
          : successCreateComponent // ignore: cast_nullable_to_non_nullable
              as bool,
      emptyUnit: emptyUnit == freezed
          ? _value.emptyUnit
          : emptyUnit // ignore: cast_nullable_to_non_nullable
              as bool,
      components: components == freezed
          ? _value.components
          : components // ignore: cast_nullable_to_non_nullable
              as List<ComponentModel>,
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductDetailModel>,
      searchDocumentList: searchDocumentList == freezed
          ? _value.searchDocumentList
          : searchDocumentList // ignore: cast_nullable_to_non_nullable
              as List<DocumentSnapshot<Object?>>,
      searchProducts: searchProducts == freezed
          ? _value.searchProducts
          : searchProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductDetailModel>,
      isInitial: isInitial == freezed
          ? _value.isInitial
          : isInitial // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_ProductStateCopyWith<$Res>
    implements $ProductStateCopyWith<$Res> {
  factory _$$_ProductStateCopyWith(
          _$_ProductState value, $Res Function(_$_ProductState) then) =
      __$$_ProductStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserModel? userModel,
      List<AssetEntity> assets,
      bool emptyImage,
      bool emptyCategories,
      bool success,
      List<DocumentSnapshot<Object?>> allDocumentList,
      bool noMoreData,
      bool error,
      bool searching,
      bool deleteImage,
      bool successCreateComponent,
      bool emptyUnit,
      List<ComponentModel> components,
      List<ProductDetailModel> products,
      List<DocumentSnapshot<Object?>> searchDocumentList,
      List<ProductDetailModel> searchProducts,
      bool isInitial});
}

/// @nodoc
class __$$_ProductStateCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res>
    implements _$$_ProductStateCopyWith<$Res> {
  __$$_ProductStateCopyWithImpl(
      _$_ProductState _value, $Res Function(_$_ProductState) _then)
      : super(_value, (v) => _then(v as _$_ProductState));

  @override
  _$_ProductState get _value => super._value as _$_ProductState;

  @override
  $Res call({
    Object? userModel = freezed,
    Object? assets = freezed,
    Object? emptyImage = freezed,
    Object? emptyCategories = freezed,
    Object? success = freezed,
    Object? allDocumentList = freezed,
    Object? noMoreData = freezed,
    Object? error = freezed,
    Object? searching = freezed,
    Object? deleteImage = freezed,
    Object? successCreateComponent = freezed,
    Object? emptyUnit = freezed,
    Object? components = freezed,
    Object? products = freezed,
    Object? searchDocumentList = freezed,
    Object? searchProducts = freezed,
    Object? isInitial = freezed,
  }) {
    return _then(_$_ProductState(
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
      emptyCategories: emptyCategories == freezed
          ? _value.emptyCategories
          : emptyCategories // ignore: cast_nullable_to_non_nullable
              as bool,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      allDocumentList: allDocumentList == freezed
          ? _value._allDocumentList
          : allDocumentList // ignore: cast_nullable_to_non_nullable
              as List<DocumentSnapshot<Object?>>,
      noMoreData: noMoreData == freezed
          ? _value.noMoreData
          : noMoreData // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      searching: searching == freezed
          ? _value.searching
          : searching // ignore: cast_nullable_to_non_nullable
              as bool,
      deleteImage: deleteImage == freezed
          ? _value.deleteImage
          : deleteImage // ignore: cast_nullable_to_non_nullable
              as bool,
      successCreateComponent: successCreateComponent == freezed
          ? _value.successCreateComponent
          : successCreateComponent // ignore: cast_nullable_to_non_nullable
              as bool,
      emptyUnit: emptyUnit == freezed
          ? _value.emptyUnit
          : emptyUnit // ignore: cast_nullable_to_non_nullable
              as bool,
      components: components == freezed
          ? _value._components
          : components // ignore: cast_nullable_to_non_nullable
              as List<ComponentModel>,
      products: products == freezed
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductDetailModel>,
      searchDocumentList: searchDocumentList == freezed
          ? _value._searchDocumentList
          : searchDocumentList // ignore: cast_nullable_to_non_nullable
              as List<DocumentSnapshot<Object?>>,
      searchProducts: searchProducts == freezed
          ? _value._searchProducts
          : searchProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductDetailModel>,
      isInitial: isInitial == freezed
          ? _value.isInitial
          : isInitial // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ProductState implements _ProductState {
  const _$_ProductState(
      {this.userModel = null,
      final List<AssetEntity> assets = const [],
      this.emptyImage = false,
      this.emptyCategories = false,
      this.success = false,
      final List<DocumentSnapshot<Object?>> allDocumentList = const [],
      this.noMoreData = false,
      this.error = false,
      this.searching = false,
      this.deleteImage = false,
      this.successCreateComponent = false,
      this.emptyUnit = false,
      final List<ComponentModel> components = const [],
      final List<ProductDetailModel> products = const [],
      final List<DocumentSnapshot<Object?>> searchDocumentList = const [],
      final List<ProductDetailModel> searchProducts = const [],
      this.isInitial = true})
      : _assets = assets,
        _allDocumentList = allDocumentList,
        _components = components,
        _products = products,
        _searchDocumentList = searchDocumentList,
        _searchProducts = searchProducts;

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
  final bool emptyCategories;
  @override
  @JsonKey()
  final bool success;
  final List<DocumentSnapshot<Object?>> _allDocumentList;
  @override
  @JsonKey()
  List<DocumentSnapshot<Object?>> get allDocumentList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allDocumentList);
  }

  @override
  @JsonKey()
  final bool noMoreData;
  @override
  @JsonKey()
  final bool error;
  @override
  @JsonKey()
  final bool searching;
  @override
  @JsonKey()
  final bool deleteImage;
  @override
  @JsonKey()
  final bool successCreateComponent;
  @override
  @JsonKey()
  final bool emptyUnit;
  final List<ComponentModel> _components;
  @override
  @JsonKey()
  List<ComponentModel> get components {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_components);
  }

  final List<ProductDetailModel> _products;
  @override
  @JsonKey()
  List<ProductDetailModel> get products {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<DocumentSnapshot<Object?>> _searchDocumentList;
  @override
  @JsonKey()
  List<DocumentSnapshot<Object?>> get searchDocumentList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchDocumentList);
  }

  final List<ProductDetailModel> _searchProducts;
  @override
  @JsonKey()
  List<ProductDetailModel> get searchProducts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchProducts);
  }

  @override
  @JsonKey()
  final bool isInitial;

  @override
  String toString() {
    return 'ProductState(userModel: $userModel, assets: $assets, emptyImage: $emptyImage, emptyCategories: $emptyCategories, success: $success, allDocumentList: $allDocumentList, noMoreData: $noMoreData, error: $error, searching: $searching, deleteImage: $deleteImage, successCreateComponent: $successCreateComponent, emptyUnit: $emptyUnit, components: $components, products: $products, searchDocumentList: $searchDocumentList, searchProducts: $searchProducts, isInitial: $isInitial)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductState &&
            const DeepCollectionEquality().equals(other.userModel, userModel) &&
            const DeepCollectionEquality().equals(other._assets, _assets) &&
            const DeepCollectionEquality()
                .equals(other.emptyImage, emptyImage) &&
            const DeepCollectionEquality()
                .equals(other.emptyCategories, emptyCategories) &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality()
                .equals(other._allDocumentList, _allDocumentList) &&
            const DeepCollectionEquality()
                .equals(other.noMoreData, noMoreData) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.searching, searching) &&
            const DeepCollectionEquality()
                .equals(other.deleteImage, deleteImage) &&
            const DeepCollectionEquality()
                .equals(other.successCreateComponent, successCreateComponent) &&
            const DeepCollectionEquality().equals(other.emptyUnit, emptyUnit) &&
            const DeepCollectionEquality()
                .equals(other._components, _components) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._searchDocumentList, _searchDocumentList) &&
            const DeepCollectionEquality()
                .equals(other._searchProducts, _searchProducts) &&
            const DeepCollectionEquality().equals(other.isInitial, isInitial));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userModel),
      const DeepCollectionEquality().hash(_assets),
      const DeepCollectionEquality().hash(emptyImage),
      const DeepCollectionEquality().hash(emptyCategories),
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(_allDocumentList),
      const DeepCollectionEquality().hash(noMoreData),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(searching),
      const DeepCollectionEquality().hash(deleteImage),
      const DeepCollectionEquality().hash(successCreateComponent),
      const DeepCollectionEquality().hash(emptyUnit),
      const DeepCollectionEquality().hash(_components),
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_searchDocumentList),
      const DeepCollectionEquality().hash(_searchProducts),
      const DeepCollectionEquality().hash(isInitial));

  @JsonKey(ignore: true)
  @override
  _$$_ProductStateCopyWith<_$_ProductState> get copyWith =>
      __$$_ProductStateCopyWithImpl<_$_ProductState>(this, _$identity);
}

abstract class _ProductState implements ProductState {
  const factory _ProductState(
      {final UserModel? userModel,
      final List<AssetEntity> assets,
      final bool emptyImage,
      final bool emptyCategories,
      final bool success,
      final List<DocumentSnapshot<Object?>> allDocumentList,
      final bool noMoreData,
      final bool error,
      final bool searching,
      final bool deleteImage,
      final bool successCreateComponent,
      final bool emptyUnit,
      final List<ComponentModel> components,
      final List<ProductDetailModel> products,
      final List<DocumentSnapshot<Object?>> searchDocumentList,
      final List<ProductDetailModel> searchProducts,
      final bool isInitial}) = _$_ProductState;

  @override
  UserModel? get userModel;
  @override
  List<AssetEntity> get assets;
  @override
  bool get emptyImage;
  @override
  bool get emptyCategories;
  @override
  bool get success;
  @override
  List<DocumentSnapshot<Object?>> get allDocumentList;
  @override
  bool get noMoreData;
  @override
  bool get error;
  @override
  bool get searching;
  @override
  bool get deleteImage;
  @override
  bool get successCreateComponent;
  @override
  bool get emptyUnit;
  @override
  List<ComponentModel> get components;
  @override
  List<ProductDetailModel> get products;
  @override
  List<DocumentSnapshot<Object?>> get searchDocumentList;
  @override
  List<ProductDetailModel> get searchProducts;
  @override
  bool get isInitial;
  @override
  @JsonKey(ignore: true)
  _$$_ProductStateCopyWith<_$_ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}
