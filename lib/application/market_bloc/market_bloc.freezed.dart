// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'market_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MarketEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthModel login, AssetEntity images) signUp,
    required TResult Function(BuildContext context, bool addImage) imagePick,
    required TResult Function(MarketModel market) createMarket,
    required TResult Function(AssetEntity assetEntity) removeImage,
    required TResult Function(bool firstPage) getMarkets,
    required TResult Function(String text) searchMarket,
    required TResult Function() searchMarketStart,
    required TResult Function(String uid) getMyMarkets,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images)? signUp,
    TResult Function(BuildContext context, bool addImage)? imagePick,
    TResult Function(MarketModel market)? createMarket,
    TResult Function(AssetEntity assetEntity)? removeImage,
    TResult Function(bool firstPage)? getMarkets,
    TResult Function(String text)? searchMarket,
    TResult Function()? searchMarketStart,
    TResult Function(String uid)? getMyMarkets,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images)? signUp,
    TResult Function(BuildContext context, bool addImage)? imagePick,
    TResult Function(MarketModel market)? createMarket,
    TResult Function(AssetEntity assetEntity)? removeImage,
    TResult Function(bool firstPage)? getMarkets,
    TResult Function(String text)? searchMarket,
    TResult Function()? searchMarketStart,
    TResult Function(String uid)? getMyMarkets,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_ImagePick value) imagePick,
    required TResult Function(_CreateMarket value) createMarket,
    required TResult Function(_RemoveImage value) removeImage,
    required TResult Function(_GetMarkets value) getMarkets,
    required TResult Function(_SearchMarket value) searchMarket,
    required TResult Function(_SearchMarketStart value) searchMarketStart,
    required TResult Function(_GetMyMarkets value) getMyMarkets,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateMarket value)? createMarket,
    TResult Function(_RemoveImage value)? removeImage,
    TResult Function(_GetMarkets value)? getMarkets,
    TResult Function(_SearchMarket value)? searchMarket,
    TResult Function(_SearchMarketStart value)? searchMarketStart,
    TResult Function(_GetMyMarkets value)? getMyMarkets,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateMarket value)? createMarket,
    TResult Function(_RemoveImage value)? removeImage,
    TResult Function(_GetMarkets value)? getMarkets,
    TResult Function(_SearchMarket value)? searchMarket,
    TResult Function(_SearchMarketStart value)? searchMarketStart,
    TResult Function(_GetMyMarkets value)? getMyMarkets,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketEventCopyWith<$Res> {
  factory $MarketEventCopyWith(
          MarketEvent value, $Res Function(MarketEvent) then) =
      _$MarketEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MarketEventCopyWithImpl<$Res> implements $MarketEventCopyWith<$Res> {
  _$MarketEventCopyWithImpl(this._value, this._then);

  final MarketEvent _value;
  // ignore: unused_field
  final $Res Function(MarketEvent) _then;
}

/// @nodoc
abstract class _$$_SignUpCopyWith<$Res> {
  factory _$$_SignUpCopyWith(_$_SignUp value, $Res Function(_$_SignUp) then) =
      __$$_SignUpCopyWithImpl<$Res>;
  $Res call({AuthModel login, AssetEntity images});
}

/// @nodoc
class __$$_SignUpCopyWithImpl<$Res> extends _$MarketEventCopyWithImpl<$Res>
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
    return 'MarketEvent.signUp(login: $login, images: $images)';
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
    required TResult Function(MarketModel market) createMarket,
    required TResult Function(AssetEntity assetEntity) removeImage,
    required TResult Function(bool firstPage) getMarkets,
    required TResult Function(String text) searchMarket,
    required TResult Function() searchMarketStart,
    required TResult Function(String uid) getMyMarkets,
  }) {
    return signUp(login, images);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images)? signUp,
    TResult Function(BuildContext context, bool addImage)? imagePick,
    TResult Function(MarketModel market)? createMarket,
    TResult Function(AssetEntity assetEntity)? removeImage,
    TResult Function(bool firstPage)? getMarkets,
    TResult Function(String text)? searchMarket,
    TResult Function()? searchMarketStart,
    TResult Function(String uid)? getMyMarkets,
  }) {
    return signUp?.call(login, images);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images)? signUp,
    TResult Function(BuildContext context, bool addImage)? imagePick,
    TResult Function(MarketModel market)? createMarket,
    TResult Function(AssetEntity assetEntity)? removeImage,
    TResult Function(bool firstPage)? getMarkets,
    TResult Function(String text)? searchMarket,
    TResult Function()? searchMarketStart,
    TResult Function(String uid)? getMyMarkets,
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
    required TResult Function(_CreateMarket value) createMarket,
    required TResult Function(_RemoveImage value) removeImage,
    required TResult Function(_GetMarkets value) getMarkets,
    required TResult Function(_SearchMarket value) searchMarket,
    required TResult Function(_SearchMarketStart value) searchMarketStart,
    required TResult Function(_GetMyMarkets value) getMyMarkets,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateMarket value)? createMarket,
    TResult Function(_RemoveImage value)? removeImage,
    TResult Function(_GetMarkets value)? getMarkets,
    TResult Function(_SearchMarket value)? searchMarket,
    TResult Function(_SearchMarketStart value)? searchMarketStart,
    TResult Function(_GetMyMarkets value)? getMyMarkets,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateMarket value)? createMarket,
    TResult Function(_RemoveImage value)? removeImage,
    TResult Function(_GetMarkets value)? getMarkets,
    TResult Function(_SearchMarket value)? searchMarket,
    TResult Function(_SearchMarketStart value)? searchMarketStart,
    TResult Function(_GetMyMarkets value)? getMyMarkets,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class _SignUp implements MarketEvent {
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
class __$$_ImagePickCopyWithImpl<$Res> extends _$MarketEventCopyWithImpl<$Res>
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
    return 'MarketEvent.imagePick(context: $context, addImage: $addImage)';
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
    required TResult Function(MarketModel market) createMarket,
    required TResult Function(AssetEntity assetEntity) removeImage,
    required TResult Function(bool firstPage) getMarkets,
    required TResult Function(String text) searchMarket,
    required TResult Function() searchMarketStart,
    required TResult Function(String uid) getMyMarkets,
  }) {
    return imagePick(context, addImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images)? signUp,
    TResult Function(BuildContext context, bool addImage)? imagePick,
    TResult Function(MarketModel market)? createMarket,
    TResult Function(AssetEntity assetEntity)? removeImage,
    TResult Function(bool firstPage)? getMarkets,
    TResult Function(String text)? searchMarket,
    TResult Function()? searchMarketStart,
    TResult Function(String uid)? getMyMarkets,
  }) {
    return imagePick?.call(context, addImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images)? signUp,
    TResult Function(BuildContext context, bool addImage)? imagePick,
    TResult Function(MarketModel market)? createMarket,
    TResult Function(AssetEntity assetEntity)? removeImage,
    TResult Function(bool firstPage)? getMarkets,
    TResult Function(String text)? searchMarket,
    TResult Function()? searchMarketStart,
    TResult Function(String uid)? getMyMarkets,
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
    required TResult Function(_CreateMarket value) createMarket,
    required TResult Function(_RemoveImage value) removeImage,
    required TResult Function(_GetMarkets value) getMarkets,
    required TResult Function(_SearchMarket value) searchMarket,
    required TResult Function(_SearchMarketStart value) searchMarketStart,
    required TResult Function(_GetMyMarkets value) getMyMarkets,
  }) {
    return imagePick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateMarket value)? createMarket,
    TResult Function(_RemoveImage value)? removeImage,
    TResult Function(_GetMarkets value)? getMarkets,
    TResult Function(_SearchMarket value)? searchMarket,
    TResult Function(_SearchMarketStart value)? searchMarketStart,
    TResult Function(_GetMyMarkets value)? getMyMarkets,
  }) {
    return imagePick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateMarket value)? createMarket,
    TResult Function(_RemoveImage value)? removeImage,
    TResult Function(_GetMarkets value)? getMarkets,
    TResult Function(_SearchMarket value)? searchMarket,
    TResult Function(_SearchMarketStart value)? searchMarketStart,
    TResult Function(_GetMyMarkets value)? getMyMarkets,
    required TResult orElse(),
  }) {
    if (imagePick != null) {
      return imagePick(this);
    }
    return orElse();
  }
}

abstract class _ImagePick implements MarketEvent {
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
abstract class _$$_CreateMarketCopyWith<$Res> {
  factory _$$_CreateMarketCopyWith(
          _$_CreateMarket value, $Res Function(_$_CreateMarket) then) =
      __$$_CreateMarketCopyWithImpl<$Res>;
  $Res call({MarketModel market});
}

/// @nodoc
class __$$_CreateMarketCopyWithImpl<$Res>
    extends _$MarketEventCopyWithImpl<$Res>
    implements _$$_CreateMarketCopyWith<$Res> {
  __$$_CreateMarketCopyWithImpl(
      _$_CreateMarket _value, $Res Function(_$_CreateMarket) _then)
      : super(_value, (v) => _then(v as _$_CreateMarket));

  @override
  _$_CreateMarket get _value => super._value as _$_CreateMarket;

  @override
  $Res call({
    Object? market = freezed,
  }) {
    return _then(_$_CreateMarket(
      market: market == freezed
          ? _value.market
          : market // ignore: cast_nullable_to_non_nullable
              as MarketModel,
    ));
  }
}

/// @nodoc

class _$_CreateMarket implements _CreateMarket {
  _$_CreateMarket({required this.market});

  @override
  final MarketModel market;

  @override
  String toString() {
    return 'MarketEvent.createMarket(market: $market)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateMarket &&
            const DeepCollectionEquality().equals(other.market, market));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(market));

  @JsonKey(ignore: true)
  @override
  _$$_CreateMarketCopyWith<_$_CreateMarket> get copyWith =>
      __$$_CreateMarketCopyWithImpl<_$_CreateMarket>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthModel login, AssetEntity images) signUp,
    required TResult Function(BuildContext context, bool addImage) imagePick,
    required TResult Function(MarketModel market) createMarket,
    required TResult Function(AssetEntity assetEntity) removeImage,
    required TResult Function(bool firstPage) getMarkets,
    required TResult Function(String text) searchMarket,
    required TResult Function() searchMarketStart,
    required TResult Function(String uid) getMyMarkets,
  }) {
    return createMarket(market);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images)? signUp,
    TResult Function(BuildContext context, bool addImage)? imagePick,
    TResult Function(MarketModel market)? createMarket,
    TResult Function(AssetEntity assetEntity)? removeImage,
    TResult Function(bool firstPage)? getMarkets,
    TResult Function(String text)? searchMarket,
    TResult Function()? searchMarketStart,
    TResult Function(String uid)? getMyMarkets,
  }) {
    return createMarket?.call(market);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images)? signUp,
    TResult Function(BuildContext context, bool addImage)? imagePick,
    TResult Function(MarketModel market)? createMarket,
    TResult Function(AssetEntity assetEntity)? removeImage,
    TResult Function(bool firstPage)? getMarkets,
    TResult Function(String text)? searchMarket,
    TResult Function()? searchMarketStart,
    TResult Function(String uid)? getMyMarkets,
    required TResult orElse(),
  }) {
    if (createMarket != null) {
      return createMarket(market);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_ImagePick value) imagePick,
    required TResult Function(_CreateMarket value) createMarket,
    required TResult Function(_RemoveImage value) removeImage,
    required TResult Function(_GetMarkets value) getMarkets,
    required TResult Function(_SearchMarket value) searchMarket,
    required TResult Function(_SearchMarketStart value) searchMarketStart,
    required TResult Function(_GetMyMarkets value) getMyMarkets,
  }) {
    return createMarket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateMarket value)? createMarket,
    TResult Function(_RemoveImage value)? removeImage,
    TResult Function(_GetMarkets value)? getMarkets,
    TResult Function(_SearchMarket value)? searchMarket,
    TResult Function(_SearchMarketStart value)? searchMarketStart,
    TResult Function(_GetMyMarkets value)? getMyMarkets,
  }) {
    return createMarket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateMarket value)? createMarket,
    TResult Function(_RemoveImage value)? removeImage,
    TResult Function(_GetMarkets value)? getMarkets,
    TResult Function(_SearchMarket value)? searchMarket,
    TResult Function(_SearchMarketStart value)? searchMarketStart,
    TResult Function(_GetMyMarkets value)? getMyMarkets,
    required TResult orElse(),
  }) {
    if (createMarket != null) {
      return createMarket(this);
    }
    return orElse();
  }
}

abstract class _CreateMarket implements MarketEvent {
  factory _CreateMarket({required final MarketModel market}) = _$_CreateMarket;

  MarketModel get market;
  @JsonKey(ignore: true)
  _$$_CreateMarketCopyWith<_$_CreateMarket> get copyWith =>
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
class __$$_RemoveImageCopyWithImpl<$Res> extends _$MarketEventCopyWithImpl<$Res>
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
    return 'MarketEvent.removeImage(assetEntity: $assetEntity)';
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
    required TResult Function(MarketModel market) createMarket,
    required TResult Function(AssetEntity assetEntity) removeImage,
    required TResult Function(bool firstPage) getMarkets,
    required TResult Function(String text) searchMarket,
    required TResult Function() searchMarketStart,
    required TResult Function(String uid) getMyMarkets,
  }) {
    return removeImage(assetEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images)? signUp,
    TResult Function(BuildContext context, bool addImage)? imagePick,
    TResult Function(MarketModel market)? createMarket,
    TResult Function(AssetEntity assetEntity)? removeImage,
    TResult Function(bool firstPage)? getMarkets,
    TResult Function(String text)? searchMarket,
    TResult Function()? searchMarketStart,
    TResult Function(String uid)? getMyMarkets,
  }) {
    return removeImage?.call(assetEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images)? signUp,
    TResult Function(BuildContext context, bool addImage)? imagePick,
    TResult Function(MarketModel market)? createMarket,
    TResult Function(AssetEntity assetEntity)? removeImage,
    TResult Function(bool firstPage)? getMarkets,
    TResult Function(String text)? searchMarket,
    TResult Function()? searchMarketStart,
    TResult Function(String uid)? getMyMarkets,
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
    required TResult Function(_CreateMarket value) createMarket,
    required TResult Function(_RemoveImage value) removeImage,
    required TResult Function(_GetMarkets value) getMarkets,
    required TResult Function(_SearchMarket value) searchMarket,
    required TResult Function(_SearchMarketStart value) searchMarketStart,
    required TResult Function(_GetMyMarkets value) getMyMarkets,
  }) {
    return removeImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateMarket value)? createMarket,
    TResult Function(_RemoveImage value)? removeImage,
    TResult Function(_GetMarkets value)? getMarkets,
    TResult Function(_SearchMarket value)? searchMarket,
    TResult Function(_SearchMarketStart value)? searchMarketStart,
    TResult Function(_GetMyMarkets value)? getMyMarkets,
  }) {
    return removeImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateMarket value)? createMarket,
    TResult Function(_RemoveImage value)? removeImage,
    TResult Function(_GetMarkets value)? getMarkets,
    TResult Function(_SearchMarket value)? searchMarket,
    TResult Function(_SearchMarketStart value)? searchMarketStart,
    TResult Function(_GetMyMarkets value)? getMyMarkets,
    required TResult orElse(),
  }) {
    if (removeImage != null) {
      return removeImage(this);
    }
    return orElse();
  }
}

abstract class _RemoveImage implements MarketEvent {
  factory _RemoveImage({required final AssetEntity assetEntity}) =
      _$_RemoveImage;

  AssetEntity get assetEntity;
  @JsonKey(ignore: true)
  _$$_RemoveImageCopyWith<_$_RemoveImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetMarketsCopyWith<$Res> {
  factory _$$_GetMarketsCopyWith(
          _$_GetMarkets value, $Res Function(_$_GetMarkets) then) =
      __$$_GetMarketsCopyWithImpl<$Res>;
  $Res call({bool firstPage});
}

/// @nodoc
class __$$_GetMarketsCopyWithImpl<$Res> extends _$MarketEventCopyWithImpl<$Res>
    implements _$$_GetMarketsCopyWith<$Res> {
  __$$_GetMarketsCopyWithImpl(
      _$_GetMarkets _value, $Res Function(_$_GetMarkets) _then)
      : super(_value, (v) => _then(v as _$_GetMarkets));

  @override
  _$_GetMarkets get _value => super._value as _$_GetMarkets;

  @override
  $Res call({
    Object? firstPage = freezed,
  }) {
    return _then(_$_GetMarkets(
      firstPage: firstPage == freezed
          ? _value.firstPage
          : firstPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_GetMarkets implements _GetMarkets {
  _$_GetMarkets({required this.firstPage});

  @override
  final bool firstPage;

  @override
  String toString() {
    return 'MarketEvent.getMarkets(firstPage: $firstPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetMarkets &&
            const DeepCollectionEquality().equals(other.firstPage, firstPage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(firstPage));

  @JsonKey(ignore: true)
  @override
  _$$_GetMarketsCopyWith<_$_GetMarkets> get copyWith =>
      __$$_GetMarketsCopyWithImpl<_$_GetMarkets>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthModel login, AssetEntity images) signUp,
    required TResult Function(BuildContext context, bool addImage) imagePick,
    required TResult Function(MarketModel market) createMarket,
    required TResult Function(AssetEntity assetEntity) removeImage,
    required TResult Function(bool firstPage) getMarkets,
    required TResult Function(String text) searchMarket,
    required TResult Function() searchMarketStart,
    required TResult Function(String uid) getMyMarkets,
  }) {
    return getMarkets(firstPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images)? signUp,
    TResult Function(BuildContext context, bool addImage)? imagePick,
    TResult Function(MarketModel market)? createMarket,
    TResult Function(AssetEntity assetEntity)? removeImage,
    TResult Function(bool firstPage)? getMarkets,
    TResult Function(String text)? searchMarket,
    TResult Function()? searchMarketStart,
    TResult Function(String uid)? getMyMarkets,
  }) {
    return getMarkets?.call(firstPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images)? signUp,
    TResult Function(BuildContext context, bool addImage)? imagePick,
    TResult Function(MarketModel market)? createMarket,
    TResult Function(AssetEntity assetEntity)? removeImage,
    TResult Function(bool firstPage)? getMarkets,
    TResult Function(String text)? searchMarket,
    TResult Function()? searchMarketStart,
    TResult Function(String uid)? getMyMarkets,
    required TResult orElse(),
  }) {
    if (getMarkets != null) {
      return getMarkets(firstPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_ImagePick value) imagePick,
    required TResult Function(_CreateMarket value) createMarket,
    required TResult Function(_RemoveImage value) removeImage,
    required TResult Function(_GetMarkets value) getMarkets,
    required TResult Function(_SearchMarket value) searchMarket,
    required TResult Function(_SearchMarketStart value) searchMarketStart,
    required TResult Function(_GetMyMarkets value) getMyMarkets,
  }) {
    return getMarkets(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateMarket value)? createMarket,
    TResult Function(_RemoveImage value)? removeImage,
    TResult Function(_GetMarkets value)? getMarkets,
    TResult Function(_SearchMarket value)? searchMarket,
    TResult Function(_SearchMarketStart value)? searchMarketStart,
    TResult Function(_GetMyMarkets value)? getMyMarkets,
  }) {
    return getMarkets?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateMarket value)? createMarket,
    TResult Function(_RemoveImage value)? removeImage,
    TResult Function(_GetMarkets value)? getMarkets,
    TResult Function(_SearchMarket value)? searchMarket,
    TResult Function(_SearchMarketStart value)? searchMarketStart,
    TResult Function(_GetMyMarkets value)? getMyMarkets,
    required TResult orElse(),
  }) {
    if (getMarkets != null) {
      return getMarkets(this);
    }
    return orElse();
  }
}

abstract class _GetMarkets implements MarketEvent {
  factory _GetMarkets({required final bool firstPage}) = _$_GetMarkets;

  bool get firstPage;
  @JsonKey(ignore: true)
  _$$_GetMarketsCopyWith<_$_GetMarkets> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchMarketCopyWith<$Res> {
  factory _$$_SearchMarketCopyWith(
          _$_SearchMarket value, $Res Function(_$_SearchMarket) then) =
      __$$_SearchMarketCopyWithImpl<$Res>;
  $Res call({String text});
}

/// @nodoc
class __$$_SearchMarketCopyWithImpl<$Res>
    extends _$MarketEventCopyWithImpl<$Res>
    implements _$$_SearchMarketCopyWith<$Res> {
  __$$_SearchMarketCopyWithImpl(
      _$_SearchMarket _value, $Res Function(_$_SearchMarket) _then)
      : super(_value, (v) => _then(v as _$_SearchMarket));

  @override
  _$_SearchMarket get _value => super._value as _$_SearchMarket;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_$_SearchMarket(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchMarket implements _SearchMarket {
  _$_SearchMarket({required this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'MarketEvent.searchMarket(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchMarket &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  _$$_SearchMarketCopyWith<_$_SearchMarket> get copyWith =>
      __$$_SearchMarketCopyWithImpl<_$_SearchMarket>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthModel login, AssetEntity images) signUp,
    required TResult Function(BuildContext context, bool addImage) imagePick,
    required TResult Function(MarketModel market) createMarket,
    required TResult Function(AssetEntity assetEntity) removeImage,
    required TResult Function(bool firstPage) getMarkets,
    required TResult Function(String text) searchMarket,
    required TResult Function() searchMarketStart,
    required TResult Function(String uid) getMyMarkets,
  }) {
    return searchMarket(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images)? signUp,
    TResult Function(BuildContext context, bool addImage)? imagePick,
    TResult Function(MarketModel market)? createMarket,
    TResult Function(AssetEntity assetEntity)? removeImage,
    TResult Function(bool firstPage)? getMarkets,
    TResult Function(String text)? searchMarket,
    TResult Function()? searchMarketStart,
    TResult Function(String uid)? getMyMarkets,
  }) {
    return searchMarket?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images)? signUp,
    TResult Function(BuildContext context, bool addImage)? imagePick,
    TResult Function(MarketModel market)? createMarket,
    TResult Function(AssetEntity assetEntity)? removeImage,
    TResult Function(bool firstPage)? getMarkets,
    TResult Function(String text)? searchMarket,
    TResult Function()? searchMarketStart,
    TResult Function(String uid)? getMyMarkets,
    required TResult orElse(),
  }) {
    if (searchMarket != null) {
      return searchMarket(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_ImagePick value) imagePick,
    required TResult Function(_CreateMarket value) createMarket,
    required TResult Function(_RemoveImage value) removeImage,
    required TResult Function(_GetMarkets value) getMarkets,
    required TResult Function(_SearchMarket value) searchMarket,
    required TResult Function(_SearchMarketStart value) searchMarketStart,
    required TResult Function(_GetMyMarkets value) getMyMarkets,
  }) {
    return searchMarket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateMarket value)? createMarket,
    TResult Function(_RemoveImage value)? removeImage,
    TResult Function(_GetMarkets value)? getMarkets,
    TResult Function(_SearchMarket value)? searchMarket,
    TResult Function(_SearchMarketStart value)? searchMarketStart,
    TResult Function(_GetMyMarkets value)? getMyMarkets,
  }) {
    return searchMarket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateMarket value)? createMarket,
    TResult Function(_RemoveImage value)? removeImage,
    TResult Function(_GetMarkets value)? getMarkets,
    TResult Function(_SearchMarket value)? searchMarket,
    TResult Function(_SearchMarketStart value)? searchMarketStart,
    TResult Function(_GetMyMarkets value)? getMyMarkets,
    required TResult orElse(),
  }) {
    if (searchMarket != null) {
      return searchMarket(this);
    }
    return orElse();
  }
}

abstract class _SearchMarket implements MarketEvent {
  factory _SearchMarket({required final String text}) = _$_SearchMarket;

  String get text;
  @JsonKey(ignore: true)
  _$$_SearchMarketCopyWith<_$_SearchMarket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchMarketStartCopyWith<$Res> {
  factory _$$_SearchMarketStartCopyWith(_$_SearchMarketStart value,
          $Res Function(_$_SearchMarketStart) then) =
      __$$_SearchMarketStartCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchMarketStartCopyWithImpl<$Res>
    extends _$MarketEventCopyWithImpl<$Res>
    implements _$$_SearchMarketStartCopyWith<$Res> {
  __$$_SearchMarketStartCopyWithImpl(
      _$_SearchMarketStart _value, $Res Function(_$_SearchMarketStart) _then)
      : super(_value, (v) => _then(v as _$_SearchMarketStart));

  @override
  _$_SearchMarketStart get _value => super._value as _$_SearchMarketStart;
}

/// @nodoc

class _$_SearchMarketStart implements _SearchMarketStart {
  _$_SearchMarketStart();

  @override
  String toString() {
    return 'MarketEvent.searchMarketStart()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SearchMarketStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthModel login, AssetEntity images) signUp,
    required TResult Function(BuildContext context, bool addImage) imagePick,
    required TResult Function(MarketModel market) createMarket,
    required TResult Function(AssetEntity assetEntity) removeImage,
    required TResult Function(bool firstPage) getMarkets,
    required TResult Function(String text) searchMarket,
    required TResult Function() searchMarketStart,
    required TResult Function(String uid) getMyMarkets,
  }) {
    return searchMarketStart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images)? signUp,
    TResult Function(BuildContext context, bool addImage)? imagePick,
    TResult Function(MarketModel market)? createMarket,
    TResult Function(AssetEntity assetEntity)? removeImage,
    TResult Function(bool firstPage)? getMarkets,
    TResult Function(String text)? searchMarket,
    TResult Function()? searchMarketStart,
    TResult Function(String uid)? getMyMarkets,
  }) {
    return searchMarketStart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images)? signUp,
    TResult Function(BuildContext context, bool addImage)? imagePick,
    TResult Function(MarketModel market)? createMarket,
    TResult Function(AssetEntity assetEntity)? removeImage,
    TResult Function(bool firstPage)? getMarkets,
    TResult Function(String text)? searchMarket,
    TResult Function()? searchMarketStart,
    TResult Function(String uid)? getMyMarkets,
    required TResult orElse(),
  }) {
    if (searchMarketStart != null) {
      return searchMarketStart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_ImagePick value) imagePick,
    required TResult Function(_CreateMarket value) createMarket,
    required TResult Function(_RemoveImage value) removeImage,
    required TResult Function(_GetMarkets value) getMarkets,
    required TResult Function(_SearchMarket value) searchMarket,
    required TResult Function(_SearchMarketStart value) searchMarketStart,
    required TResult Function(_GetMyMarkets value) getMyMarkets,
  }) {
    return searchMarketStart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateMarket value)? createMarket,
    TResult Function(_RemoveImage value)? removeImage,
    TResult Function(_GetMarkets value)? getMarkets,
    TResult Function(_SearchMarket value)? searchMarket,
    TResult Function(_SearchMarketStart value)? searchMarketStart,
    TResult Function(_GetMyMarkets value)? getMyMarkets,
  }) {
    return searchMarketStart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateMarket value)? createMarket,
    TResult Function(_RemoveImage value)? removeImage,
    TResult Function(_GetMarkets value)? getMarkets,
    TResult Function(_SearchMarket value)? searchMarket,
    TResult Function(_SearchMarketStart value)? searchMarketStart,
    TResult Function(_GetMyMarkets value)? getMyMarkets,
    required TResult orElse(),
  }) {
    if (searchMarketStart != null) {
      return searchMarketStart(this);
    }
    return orElse();
  }
}

abstract class _SearchMarketStart implements MarketEvent {
  factory _SearchMarketStart() = _$_SearchMarketStart;
}

/// @nodoc
abstract class _$$_GetMyMarketsCopyWith<$Res> {
  factory _$$_GetMyMarketsCopyWith(
          _$_GetMyMarkets value, $Res Function(_$_GetMyMarkets) then) =
      __$$_GetMyMarketsCopyWithImpl<$Res>;
  $Res call({String uid});
}

/// @nodoc
class __$$_GetMyMarketsCopyWithImpl<$Res>
    extends _$MarketEventCopyWithImpl<$Res>
    implements _$$_GetMyMarketsCopyWith<$Res> {
  __$$_GetMyMarketsCopyWithImpl(
      _$_GetMyMarkets _value, $Res Function(_$_GetMyMarkets) _then)
      : super(_value, (v) => _then(v as _$_GetMyMarkets));

  @override
  _$_GetMyMarkets get _value => super._value as _$_GetMyMarkets;

  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(_$_GetMyMarkets(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetMyMarkets implements _GetMyMarkets {
  _$_GetMyMarkets({required this.uid});

  @override
  final String uid;

  @override
  String toString() {
    return 'MarketEvent.getMyMarkets(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetMyMarkets &&
            const DeepCollectionEquality().equals(other.uid, uid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(uid));

  @JsonKey(ignore: true)
  @override
  _$$_GetMyMarketsCopyWith<_$_GetMyMarkets> get copyWith =>
      __$$_GetMyMarketsCopyWithImpl<_$_GetMyMarkets>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthModel login, AssetEntity images) signUp,
    required TResult Function(BuildContext context, bool addImage) imagePick,
    required TResult Function(MarketModel market) createMarket,
    required TResult Function(AssetEntity assetEntity) removeImage,
    required TResult Function(bool firstPage) getMarkets,
    required TResult Function(String text) searchMarket,
    required TResult Function() searchMarketStart,
    required TResult Function(String uid) getMyMarkets,
  }) {
    return getMyMarkets(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images)? signUp,
    TResult Function(BuildContext context, bool addImage)? imagePick,
    TResult Function(MarketModel market)? createMarket,
    TResult Function(AssetEntity assetEntity)? removeImage,
    TResult Function(bool firstPage)? getMarkets,
    TResult Function(String text)? searchMarket,
    TResult Function()? searchMarketStart,
    TResult Function(String uid)? getMyMarkets,
  }) {
    return getMyMarkets?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthModel login, AssetEntity images)? signUp,
    TResult Function(BuildContext context, bool addImage)? imagePick,
    TResult Function(MarketModel market)? createMarket,
    TResult Function(AssetEntity assetEntity)? removeImage,
    TResult Function(bool firstPage)? getMarkets,
    TResult Function(String text)? searchMarket,
    TResult Function()? searchMarketStart,
    TResult Function(String uid)? getMyMarkets,
    required TResult orElse(),
  }) {
    if (getMyMarkets != null) {
      return getMyMarkets(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_ImagePick value) imagePick,
    required TResult Function(_CreateMarket value) createMarket,
    required TResult Function(_RemoveImage value) removeImage,
    required TResult Function(_GetMarkets value) getMarkets,
    required TResult Function(_SearchMarket value) searchMarket,
    required TResult Function(_SearchMarketStart value) searchMarketStart,
    required TResult Function(_GetMyMarkets value) getMyMarkets,
  }) {
    return getMyMarkets(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateMarket value)? createMarket,
    TResult Function(_RemoveImage value)? removeImage,
    TResult Function(_GetMarkets value)? getMarkets,
    TResult Function(_SearchMarket value)? searchMarket,
    TResult Function(_SearchMarketStart value)? searchMarketStart,
    TResult Function(_GetMyMarkets value)? getMyMarkets,
  }) {
    return getMyMarkets?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ImagePick value)? imagePick,
    TResult Function(_CreateMarket value)? createMarket,
    TResult Function(_RemoveImage value)? removeImage,
    TResult Function(_GetMarkets value)? getMarkets,
    TResult Function(_SearchMarket value)? searchMarket,
    TResult Function(_SearchMarketStart value)? searchMarketStart,
    TResult Function(_GetMyMarkets value)? getMyMarkets,
    required TResult orElse(),
  }) {
    if (getMyMarkets != null) {
      return getMyMarkets(this);
    }
    return orElse();
  }
}

abstract class _GetMyMarkets implements MarketEvent {
  factory _GetMyMarkets({required final String uid}) = _$_GetMyMarkets;

  String get uid;
  @JsonKey(ignore: true)
  _$$_GetMyMarketsCopyWith<_$_GetMyMarkets> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MarketState {
  UserModel? get userModel => throw _privateConstructorUsedError;
  List<AssetEntity> get assets => throw _privateConstructorUsedError;
  bool get emptyImage => throw _privateConstructorUsedError;
  bool get emptyDesc => throw _privateConstructorUsedError;
  bool get emptyTags => throw _privateConstructorUsedError;
  bool get emptyTitle => throw _privateConstructorUsedError;
  bool get emptyCategories => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  List<MarketModel> get markets => throw _privateConstructorUsedError;
  List<DocumentSnapshot<Object?>> get allDocumentList =>
      throw _privateConstructorUsedError;
  bool get noMoreData => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  List<MarketModel> get searchMarkets => throw _privateConstructorUsedError;
  bool get searching => throw _privateConstructorUsedError;
  bool get deleteImage => throw _privateConstructorUsedError;
  bool get isInitial => throw _privateConstructorUsedError;
  List<MarketModel> get myMarkets => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MarketStateCopyWith<MarketState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketStateCopyWith<$Res> {
  factory $MarketStateCopyWith(
          MarketState value, $Res Function(MarketState) then) =
      _$MarketStateCopyWithImpl<$Res>;
  $Res call(
      {UserModel? userModel,
      List<AssetEntity> assets,
      bool emptyImage,
      bool emptyDesc,
      bool emptyTags,
      bool emptyTitle,
      bool emptyCategories,
      bool success,
      List<MarketModel> markets,
      List<DocumentSnapshot<Object?>> allDocumentList,
      bool noMoreData,
      bool error,
      List<MarketModel> searchMarkets,
      bool searching,
      bool deleteImage,
      bool isInitial,
      List<MarketModel> myMarkets});
}

/// @nodoc
class _$MarketStateCopyWithImpl<$Res> implements $MarketStateCopyWith<$Res> {
  _$MarketStateCopyWithImpl(this._value, this._then);

  final MarketState _value;
  // ignore: unused_field
  final $Res Function(MarketState) _then;

  @override
  $Res call({
    Object? userModel = freezed,
    Object? assets = freezed,
    Object? emptyImage = freezed,
    Object? emptyDesc = freezed,
    Object? emptyTags = freezed,
    Object? emptyTitle = freezed,
    Object? emptyCategories = freezed,
    Object? success = freezed,
    Object? markets = freezed,
    Object? allDocumentList = freezed,
    Object? noMoreData = freezed,
    Object? error = freezed,
    Object? searchMarkets = freezed,
    Object? searching = freezed,
    Object? deleteImage = freezed,
    Object? isInitial = freezed,
    Object? myMarkets = freezed,
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
      emptyDesc: emptyDesc == freezed
          ? _value.emptyDesc
          : emptyDesc // ignore: cast_nullable_to_non_nullable
              as bool,
      emptyTags: emptyTags == freezed
          ? _value.emptyTags
          : emptyTags // ignore: cast_nullable_to_non_nullable
              as bool,
      emptyTitle: emptyTitle == freezed
          ? _value.emptyTitle
          : emptyTitle // ignore: cast_nullable_to_non_nullable
              as bool,
      emptyCategories: emptyCategories == freezed
          ? _value.emptyCategories
          : emptyCategories // ignore: cast_nullable_to_non_nullable
              as bool,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      markets: markets == freezed
          ? _value.markets
          : markets // ignore: cast_nullable_to_non_nullable
              as List<MarketModel>,
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
      searchMarkets: searchMarkets == freezed
          ? _value.searchMarkets
          : searchMarkets // ignore: cast_nullable_to_non_nullable
              as List<MarketModel>,
      searching: searching == freezed
          ? _value.searching
          : searching // ignore: cast_nullable_to_non_nullable
              as bool,
      deleteImage: deleteImage == freezed
          ? _value.deleteImage
          : deleteImage // ignore: cast_nullable_to_non_nullable
              as bool,
      isInitial: isInitial == freezed
          ? _value.isInitial
          : isInitial // ignore: cast_nullable_to_non_nullable
              as bool,
      myMarkets: myMarkets == freezed
          ? _value.myMarkets
          : myMarkets // ignore: cast_nullable_to_non_nullable
              as List<MarketModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_MarketStateCopyWith<$Res>
    implements $MarketStateCopyWith<$Res> {
  factory _$$_MarketStateCopyWith(
          _$_MarketState value, $Res Function(_$_MarketState) then) =
      __$$_MarketStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserModel? userModel,
      List<AssetEntity> assets,
      bool emptyImage,
      bool emptyDesc,
      bool emptyTags,
      bool emptyTitle,
      bool emptyCategories,
      bool success,
      List<MarketModel> markets,
      List<DocumentSnapshot<Object?>> allDocumentList,
      bool noMoreData,
      bool error,
      List<MarketModel> searchMarkets,
      bool searching,
      bool deleteImage,
      bool isInitial,
      List<MarketModel> myMarkets});
}

/// @nodoc
class __$$_MarketStateCopyWithImpl<$Res> extends _$MarketStateCopyWithImpl<$Res>
    implements _$$_MarketStateCopyWith<$Res> {
  __$$_MarketStateCopyWithImpl(
      _$_MarketState _value, $Res Function(_$_MarketState) _then)
      : super(_value, (v) => _then(v as _$_MarketState));

  @override
  _$_MarketState get _value => super._value as _$_MarketState;

  @override
  $Res call({
    Object? userModel = freezed,
    Object? assets = freezed,
    Object? emptyImage = freezed,
    Object? emptyDesc = freezed,
    Object? emptyTags = freezed,
    Object? emptyTitle = freezed,
    Object? emptyCategories = freezed,
    Object? success = freezed,
    Object? markets = freezed,
    Object? allDocumentList = freezed,
    Object? noMoreData = freezed,
    Object? error = freezed,
    Object? searchMarkets = freezed,
    Object? searching = freezed,
    Object? deleteImage = freezed,
    Object? isInitial = freezed,
    Object? myMarkets = freezed,
  }) {
    return _then(_$_MarketState(
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
      emptyDesc: emptyDesc == freezed
          ? _value.emptyDesc
          : emptyDesc // ignore: cast_nullable_to_non_nullable
              as bool,
      emptyTags: emptyTags == freezed
          ? _value.emptyTags
          : emptyTags // ignore: cast_nullable_to_non_nullable
              as bool,
      emptyTitle: emptyTitle == freezed
          ? _value.emptyTitle
          : emptyTitle // ignore: cast_nullable_to_non_nullable
              as bool,
      emptyCategories: emptyCategories == freezed
          ? _value.emptyCategories
          : emptyCategories // ignore: cast_nullable_to_non_nullable
              as bool,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      markets: markets == freezed
          ? _value._markets
          : markets // ignore: cast_nullable_to_non_nullable
              as List<MarketModel>,
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
      searchMarkets: searchMarkets == freezed
          ? _value._searchMarkets
          : searchMarkets // ignore: cast_nullable_to_non_nullable
              as List<MarketModel>,
      searching: searching == freezed
          ? _value.searching
          : searching // ignore: cast_nullable_to_non_nullable
              as bool,
      deleteImage: deleteImage == freezed
          ? _value.deleteImage
          : deleteImage // ignore: cast_nullable_to_non_nullable
              as bool,
      isInitial: isInitial == freezed
          ? _value.isInitial
          : isInitial // ignore: cast_nullable_to_non_nullable
              as bool,
      myMarkets: myMarkets == freezed
          ? _value._myMarkets
          : myMarkets // ignore: cast_nullable_to_non_nullable
              as List<MarketModel>,
    ));
  }
}

/// @nodoc

class _$_MarketState implements _MarketState {
  const _$_MarketState(
      {this.userModel = null,
      final List<AssetEntity> assets = const [],
      this.emptyImage = false,
      this.emptyDesc = false,
      this.emptyTags = false,
      this.emptyTitle = false,
      this.emptyCategories = false,
      this.success = false,
      final List<MarketModel> markets = const [],
      final List<DocumentSnapshot<Object?>> allDocumentList = const [],
      this.noMoreData = false,
      this.error = false,
      final List<MarketModel> searchMarkets = const [],
      this.searching = false,
      this.deleteImage = false,
      this.isInitial = true,
      final List<MarketModel> myMarkets = const []})
      : _assets = assets,
        _markets = markets,
        _allDocumentList = allDocumentList,
        _searchMarkets = searchMarkets,
        _myMarkets = myMarkets;

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
  final bool emptyDesc;
  @override
  @JsonKey()
  final bool emptyTags;
  @override
  @JsonKey()
  final bool emptyTitle;
  @override
  @JsonKey()
  final bool emptyCategories;
  @override
  @JsonKey()
  final bool success;
  final List<MarketModel> _markets;
  @override
  @JsonKey()
  List<MarketModel> get markets {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_markets);
  }

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
  final List<MarketModel> _searchMarkets;
  @override
  @JsonKey()
  List<MarketModel> get searchMarkets {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchMarkets);
  }

  @override
  @JsonKey()
  final bool searching;
  @override
  @JsonKey()
  final bool deleteImage;
  @override
  @JsonKey()
  final bool isInitial;
  final List<MarketModel> _myMarkets;
  @override
  @JsonKey()
  List<MarketModel> get myMarkets {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_myMarkets);
  }

  @override
  String toString() {
    return 'MarketState(userModel: $userModel, assets: $assets, emptyImage: $emptyImage, emptyDesc: $emptyDesc, emptyTags: $emptyTags, emptyTitle: $emptyTitle, emptyCategories: $emptyCategories, success: $success, markets: $markets, allDocumentList: $allDocumentList, noMoreData: $noMoreData, error: $error, searchMarkets: $searchMarkets, searching: $searching, deleteImage: $deleteImage, isInitial: $isInitial, myMarkets: $myMarkets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MarketState &&
            const DeepCollectionEquality().equals(other.userModel, userModel) &&
            const DeepCollectionEquality().equals(other._assets, _assets) &&
            const DeepCollectionEquality()
                .equals(other.emptyImage, emptyImage) &&
            const DeepCollectionEquality().equals(other.emptyDesc, emptyDesc) &&
            const DeepCollectionEquality().equals(other.emptyTags, emptyTags) &&
            const DeepCollectionEquality()
                .equals(other.emptyTitle, emptyTitle) &&
            const DeepCollectionEquality()
                .equals(other.emptyCategories, emptyCategories) &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality().equals(other._markets, _markets) &&
            const DeepCollectionEquality()
                .equals(other._allDocumentList, _allDocumentList) &&
            const DeepCollectionEquality()
                .equals(other.noMoreData, noMoreData) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other._searchMarkets, _searchMarkets) &&
            const DeepCollectionEquality().equals(other.searching, searching) &&
            const DeepCollectionEquality()
                .equals(other.deleteImage, deleteImage) &&
            const DeepCollectionEquality().equals(other.isInitial, isInitial) &&
            const DeepCollectionEquality()
                .equals(other._myMarkets, _myMarkets));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userModel),
      const DeepCollectionEquality().hash(_assets),
      const DeepCollectionEquality().hash(emptyImage),
      const DeepCollectionEquality().hash(emptyDesc),
      const DeepCollectionEquality().hash(emptyTags),
      const DeepCollectionEquality().hash(emptyTitle),
      const DeepCollectionEquality().hash(emptyCategories),
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(_markets),
      const DeepCollectionEquality().hash(_allDocumentList),
      const DeepCollectionEquality().hash(noMoreData),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(_searchMarkets),
      const DeepCollectionEquality().hash(searching),
      const DeepCollectionEquality().hash(deleteImage),
      const DeepCollectionEquality().hash(isInitial),
      const DeepCollectionEquality().hash(_myMarkets));

  @JsonKey(ignore: true)
  @override
  _$$_MarketStateCopyWith<_$_MarketState> get copyWith =>
      __$$_MarketStateCopyWithImpl<_$_MarketState>(this, _$identity);
}

abstract class _MarketState implements MarketState {
  const factory _MarketState(
      {final UserModel? userModel,
      final List<AssetEntity> assets,
      final bool emptyImage,
      final bool emptyDesc,
      final bool emptyTags,
      final bool emptyTitle,
      final bool emptyCategories,
      final bool success,
      final List<MarketModel> markets,
      final List<DocumentSnapshot<Object?>> allDocumentList,
      final bool noMoreData,
      final bool error,
      final List<MarketModel> searchMarkets,
      final bool searching,
      final bool deleteImage,
      final bool isInitial,
      final List<MarketModel> myMarkets}) = _$_MarketState;

  @override
  UserModel? get userModel;
  @override
  List<AssetEntity> get assets;
  @override
  bool get emptyImage;
  @override
  bool get emptyDesc;
  @override
  bool get emptyTags;
  @override
  bool get emptyTitle;
  @override
  bool get emptyCategories;
  @override
  bool get success;
  @override
  List<MarketModel> get markets;
  @override
  List<DocumentSnapshot<Object?>> get allDocumentList;
  @override
  bool get noMoreData;
  @override
  bool get error;
  @override
  List<MarketModel> get searchMarkets;
  @override
  bool get searching;
  @override
  bool get deleteImage;
  @override
  bool get isInitial;
  @override
  List<MarketModel> get myMarkets;
  @override
  @JsonKey(ignore: true)
  _$$_MarketStateCopyWith<_$_MarketState> get copyWith =>
      throw _privateConstructorUsedError;
}
