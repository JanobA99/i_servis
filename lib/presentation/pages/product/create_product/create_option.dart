import 'package:built_collection/built_collection.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:universal_shop/application/product_bloc/product_bloc.dart';
import 'package:universal_shop/infrastructure/extensions/custom_string_extension.dart';
import 'package:universal_shop/infrastructure/extensions/remove_zero_in_double.dart';
import 'package:universal_shop/infrastructure/models/component/component_model.dart';
import 'package:universal_shop/infrastructure/models/product/product_model.dart';
import 'package:universal_shop/presentation/component/custom_button.dart';
import 'package:uuid/uuid.dart';

import '../../../../domain/core/hive_keys.dart';
import '../../../../infrastructure/models/category/category_model.dart';
import '../../../../infrastructure/models/currency/currency_model.dart';
import '../../../component/custom_text_field.dart';
import '../../../component/image_or_video.dart';
import '../../../styles/theme.dart';
import '../../../styles/theme_wrapper.dart';
import '../../badges/select_badge.dart';
import '../../component_of_product/select_component.dart';

class CreateOption extends StatefulWidget {
  final Option? option;
  final List<ComponentModel> components;
  final bool isService;

  const CreateOption({Key? key, this.option, required this.components, required this.isService})
      : super(key: key);

  @override
  State<CreateOption> createState() => _CreateOptionState();
}

class _CreateOptionState extends State<CreateOption> {
  late TextEditingController _titleController;
  late TextEditingController _descController;
  late TextEditingController _stockController;
  late TextEditingController _priceController;
  late TextEditingController _discountedPriceController;

  bool emptyTitle = false;
  bool emptyPrice = false;
  bool emptyImage = false;
  bool emptyInStock = false;
  List<ComponentModel> _selectedComponent = [];
  List<ComponentModel> _components = [];
  List<CategoryOrInnerSubcategoryOrBadgeModel> _selectedBadges = [];
  List<String> _imageUrls = [];
  int _carouselIndex = 0;
  CurrencyModel? currencyModel;

  Future<void> _selectComponent(
      BuildContext context, List<ComponentModel> components) async {
    final List<List<ComponentModel>>? results = await showDialog(
      context: context,
      builder: (BuildContext contextDialog) {
        return BlocProvider.value(
          value: context.read<ProductBloc>(),
          child: MultiSelectComponent(
            items: components,
            selectedItems: List.from(_selectedComponent),
          ),
        );
      },
    );
    if (results != null) {
      _components = results.first;
      _selectedComponent = results[1];
      setState(() {});
    }
  }

  // Future<void> _createCurrency(BuildContext context) async {
  //   await showDialog(
  //     context: context,
  //     builder: (BuildContext contextDialog) {
  //       return BlocProvider.value(
  //         value: context.read<CurrencyBloc>(),
  //         child: const CreateCurrency(),
  //       );
  //     },
  //   );
  // }

  Future<void> _selectBadges(BuildContext context) async {
    final List<CategoryOrInnerSubcategoryOrBadgeModel>? results =
        await showDialog(
      context: context,
      builder: (BuildContext contextDialog) {
        return MultiSelectBadge(
          selectedItems: _selectedBadges,
        );
      },
    );
    if (results != null) {
      _selectedBadges = results;
      setState(() {});
    }
  }

  @override
  void initState() {
    _titleController =
        TextEditingController(text: widget.option?.optionName ?? "");
    _stockController =
        TextEditingController(text: widget.option?.inStock.toString());
    _descController =
        TextEditingController(text: widget.option?.optionDescription ?? "");
    _priceController = TextEditingController(
        text: widget.option?.price?.removeZeroInDouble ?? "");
    _discountedPriceController = TextEditingController(
        text: widget.option?.discountPrice?.removeZeroInDouble ?? "");
    _components = widget.components;

    if (widget.option != null) {
      _imageUrls = widget.option?.photoUrl?.toList()??[];
      _selectedComponent = widget.option?.components?.toList() ?? [];
      currencyModel = widget.option!.currencyModel;
      _selectedBadges = widget.option?.badgesModel?.toList() ?? [];
      context.read<ProductBloc>().add(ProductEvent.initialImage(
          assetEntity: widget.option?.assets?.toList() ?? []));
    }
    super.initState();
  }

  @override
  void dispose() {
    _discountedPriceController.dispose();
    _titleController.dispose();
    _descController.dispose();
    _priceController.dispose();
    _stockController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (BuildContext context, CustomColorSet colors,
        FontSet fonts, IconSet icons, GridTheme controller) {
      return Dialog(
        backgroundColor: colors.backgroundColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.r))),
        child: BlocConsumer<ProductBloc, ProductState>(listenWhen: (old, next) {
          return (old.success != next.success && next.success) ||
              (old.deleteImage != next.deleteImage && next.deleteImage);
        }, listener: (context, state) {
          if (state.success) {
            Navigator.pop(context);
          }
          if (state.deleteImage) {
            if (_imageUrls.isNotEmpty) {
              _carouselIndex - 1;
            }
            setState(() {});
          }
        }, builder: (BuildContext context, state) {
          return SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8.h),
                Center(
                  child: Text(
                    "create_options".tr(),
                    style: fonts.subtitle2,
                  ),
                ),
                SizedBox(height: 8.h),
                Center(
                  child: GestureDetector(
                    onTap: () async {
                      context.read<ProductBloc>().add(ProductEvent.imagePick(
                          context: context, addImage: false));
                    },
                    child: SizedBox(
                      height: 1.sw / 3,
                      child: state.assets.isNotEmpty || _imageUrls.isNotEmpty
                          ? CarouselSlider(
                              items: List.generate(
                                  state.assets.length + _imageUrls.length,
                                  (index) => ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.r),
                                        child: Container(
                                          height: 1.sw / 3,
                                          width: 1.sw / 3,
                                          color: colors.grey,
                                          child: VideoOrImageContent(
                                            height: 1.sw / 3,
                                            width: 1.sw / 3,
                                            isNetworkVideo:
                                                index < _imageUrls.length
                                                    ? false
                                                    : null,
                                            url: index < _imageUrls.length
                                                ? _imageUrls[index]
                                                : null,
                                            thumbnail: index < _imageUrls.length
                                                ? _imageUrls[index]
                                                : null,
                                            asset: index >= _imageUrls.length
                                                ? state.assets[
                                                    index - _imageUrls.length]
                                                : null,
                                          ),
                                        ),
                                      )),
                              options: CarouselOptions(
                                onPageChanged: (int index, cr) {
                                  setState(() {
                                    _carouselIndex = index;
                                  });
                                },
                                height: 1.sw / 3,
                                aspectRatio: 1,
                                viewportFraction: 0.5,
                                initialPage: 0,
                                enableInfiniteScroll: false,
                                reverse: false,
                                autoPlay: true,
                                autoPlayInterval: const Duration(seconds: 5),
                                autoPlayAnimationDuration:
                                    const Duration(milliseconds: 800),
                                scrollDirection: Axis.horizontal,
                              ))
                          : Container(
                              height: 1.sw / 3,
                              width: 1.sw / 3,
                              decoration: BoxDecoration(
                                  color: colors.grey,
                                  borderRadius: BorderRadius.circular(16.r)),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      icons.camera,
                                      color: colors.bodyText,
                                      width: 24.w,
                                      height: 24.h,
                                    ),
                                    Text(
                                      "upload_image_or_video".tr(),
                                      style: fonts.bodyText1
                                          .copyWith(color: colors.bodyText),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                              ),
                            ),
                    ),
                  ),
                ),
                Visibility(
                    visible: state.assets.isNotEmpty || _imageUrls.isNotEmpty,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                              onPressed: () {
                                if (_imageUrls.isNotEmpty &&
                                    _carouselIndex <= _imageUrls.length - 1) {
                                  setState(() {
                                    _imageUrls.removeAt(_carouselIndex);
                                  });
                                } else {
                                  if (_carouselIndex >= _imageUrls.length &&
                                      state.assets.length - 1 >=
                                          _carouselIndex - _imageUrls.length) {
                                    context.read<ProductBloc>().add(
                                        ProductEvent.removeImage(
                                            assetEntity: state.assets[
                                                _carouselIndex -
                                                    _imageUrls.length]));
                                  }
                                }
                              },
                              child: Text(
                                "delete_image".tr(),
                                style: fonts.caption
                                    .copyWith(color: colors.primary),
                              )),
                          TextButton(
                              onPressed: () {
                                context.read<ProductBloc>().add(
                                    ProductEvent.imagePick(
                                        context: context, addImage: true));
                              },
                              child: Text(
                                "add_image".tr(),
                                style: fonts.caption
                                    .copyWith(color: colors.primary),
                              )),
                        ],
                      ),
                    )),
                Visibility(
                    visible: emptyImage && state.assets.isEmpty,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "image_required".tr(),
                        style: fonts.caption.copyWith(color: colors.error),
                      ),
                    )),
                SizedBox(height: 8.h),
                CustomTextField(
                  error: emptyTitle ? "option_name_required".tr() : null,
                  onChanged: (String text) {
                    setState(() {
                      emptyTitle = false;
                    });
                  },
                  controller: _titleController,
                  hintText: "option_hint".tr(),
                  title: "option_name".tr(),
                  maxLines: 1,
                  maxLength: 50,
                ),
                SizedBox(height: 8.h),
                CustomTextField(
                  controller: _descController,
                  hintText: "product_description_hint".tr(),
                  title: "description".tr(),
                  maxLines: 3,
                  maxLength: 600,
                ),
                SizedBox(
                  height: 8.h,
                ),
                ValueListenableBuilder(
                    valueListenable:
                        Hive.box<CurrencyModel>(HiveKeys.currencies)
                            .listenable(),
                    builder: (context, Box<CurrencyModel> box, _) {
                      List<CurrencyModel> currencies = box.values.toList();
                      int defaultIndex = currencies.lastIndexWhere(
                          (element) => element.isDefault ?? false);

                      currencyModel ??= defaultIndex != -1
                          ? currencies[defaultIndex]
                          : currencies.isEmpty
                              ? null
                              : currencies.first;
                      return StatefulBuilder(builder: (context, stateSet) {
                        return Column(
                          children: [
                            SizedBox(height: 8.h),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Flexible(
                                  flex: 2,
                                  child: CustomTextField(
                                    error: emptyPrice
                                        ? "price_required".tr()
                                        : null,
                                    onChanged: (String text) {
                                      setState(() {
                                        emptyPrice = false;
                                      });
                                    },
                                    controller: _priceController,
                                    keyboardType:
                                        const TextInputType.numberWithOptions(
                                            decimal: true, signed: true),
                                    formatter: <TextInputFormatter>[
                                      FilteringTextInputFormatter.allow(
                                          RegExp(r'^(\d+)?\.?\d{0,50}'))
                                    ],
                                    title: "price".tr(),
                                    maxLines: 1,
                                    maxLength: 50,
                                  ),
                                ),
                                SizedBox(
                                  width: 8.w,
                                ),
                                Flexible(
                                  flex: 1,
                                  child: Builder(builder: (context) {
                                    if (currencies.isEmpty) {
                                      return const SizedBox();
                                    } else {
                                      if (currencies.length > 2) {
                                        return DropdownButton<CurrencyModel>(
                                          value: currencyModel,
                                          isDense: true,
                                          items: currencies
                                              .map((e) => DropdownMenuItem<
                                                      CurrencyModel>(
                                                  value: e,
                                                  child: Text(
                                                    e.symbol?.getCurrencySymbol ??
                                                        "",
                                                    style: fonts.subtitle1,
                                                  )))
                                              .toList(),
                                          onChanged: (CurrencyModel? value) {
                                            stateSet(() {
                                              currencyModel = value;
                                            });
                                          },
                                        );
                                      } else {
                                        return Text(
                                          currencies.first.symbol
                                                  ?.getCurrencySymbol ??
                                              "",
                                          style: fonts.subtitle1,
                                        );
                                      }
                                    }
                                  }),
                                )
                              ],
                            ),
                            SizedBox(height: 8.h),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Flexible(
                                  flex: 2,
                                  child: CustomTextField(
                                    controller: _discountedPriceController,
                                    keyboardType:
                                        const TextInputType.numberWithOptions(
                                            decimal: true, signed: true),
                                    formatter: <TextInputFormatter>[
                                      FilteringTextInputFormatter.allow(
                                          RegExp(r'^(\d+)?\.?\d{0,50}'))
                                    ],
                                    title: "discounted_price".tr(),
                                    hintText: "optional".tr(),
                                    maxLines: 1,
                                    maxLength: 50,
                                  ),
                                ),
                                SizedBox(
                                  width: 8.w,
                                ),
                                Flexible(
                                  flex: 1,
                                  child: Builder(builder: (context) {
                                    if (currencies.isEmpty) {
                                      return const SizedBox();
                                    } else {
                                      if (currencies.length > 2) {
                                        return DropdownButton<CurrencyModel>(
                                          value: currencyModel,
                                          isDense: true,
                                          items: currencies
                                              .map((e) => DropdownMenuItem<
                                                      CurrencyModel>(
                                                  value: e,
                                                  child: Text(
                                                    e.symbol?.getCurrencySymbol ??
                                                        "",
                                                    style: fonts.subtitle1,
                                                  )))
                                              .toList(),
                                          onChanged: (CurrencyModel? value) {
                                            stateSet(() {
                                              currencyModel = value;
                                            });
                                          },
                                        );
                                      } else {
                                        return Text(
                                          currencies.first.symbol
                                                  ?.getCurrencySymbol ??
                                              "",
                                          style: fonts.subtitle1,
                                        );
                                      }
                                    }
                                  }),
                                )
                              ],
                            ),
                          ],
                        );
                      });
                    }),
                SizedBox(height: 8.h),
                CustomTextField(
                  readOnly: true,
                  onPressed: () => _selectBadges(context),
                  hintText: "select_badge".tr(),
                  title: "badge".tr(),
                  maxLines: 1,
                  suffixIcon: SvgPicture.asset(icons.arrowRight),
                  onSuffixIconPressed: () => _selectBadges(context),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Wrap(
                  children: _selectedBadges
                      .map((e) => Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4.w),
                            child: Chip(
                              onDeleted: () {
                                _selectedBadges.remove(e);
                                setState(() {});
                              },
                              label: Text(
                                e.title ?? "",
                                style: fonts.bodyText1
                                    .copyWith(color: colors.text),
                              ),
                            ),
                          ))
                      .toList(),
                ),
                SizedBox(height: 8.h),
                if(!widget.isService)
                Column(
                  children: [
                    CustomTextField(
                      error: emptyInStock ? "in_stock_required".tr() : null,
                      onChanged: (String text) {
                        setState(() {
                          emptyInStock = false;
                        });
                      },
                      controller: _stockController,
                      hintText: "12",
                      title: "in_stock".tr(),
                      maxLines: 1,
                      maxLength: 50,
                      formatter: [FilteringTextInputFormatter.digitsOnly],
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(height: 8,),
                    CustomTextField(
                      readOnly: true,
                      onPressed: () {
                        _selectComponent(context, _components);
                      },
                      hintText: "select_component".tr(),
                      title: "component".tr(),
                      maxLines: 1,
                      suffixIcon: SvgPicture.asset(icons.arrowRight),
                      onSuffixIconPressed: () {
                        _selectComponent(context, _components);
                      },
                    ),
                    SizedBox(height: 4.h),
                    Wrap(
                      children: List.generate(
                          _selectedComponent.length,
                              (index) => Container(
                            margin: EdgeInsets.all(4.sm),
                            decoration: BoxDecoration(
                                color: colors.lightTextBody,
                                borderRadius:
                                BorderRadius.all(Radius.circular(12.r))),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                  EdgeInsets.fromLTRB(16.w, 12.h, 0, 12.h),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        _selectedComponent[index].name ?? "",
                                        style: fonts.caption
                                            .copyWith(color: colors.bodyText),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                        MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            _selectedComponent[index]
                                                .amount
                                                ?.removeZeroInDouble ??
                                                "",
                                            style: fonts.bodyText1
                                                .copyWith(color: colors.text),
                                          ),
                                          SizedBox(
                                            width: 2.w,
                                          ),
                                          Text(
                                            _selectedComponent[index]
                                                .unit
                                                ?.unit ??
                                                "",
                                            style: fonts.bodyText1
                                                .copyWith(color: colors.text),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _selectedComponent.removeAt(index);
                                    });
                                  },
                                  child: Container(
                                    height: 16.h,
                                    width: 16.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(4.r)),
                                      color: colors.error,
                                    ),
                                    child: Icon(
                                      Icons.close,
                                      size: 16.sm,
                                      color: colors.backgroundColor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                  ],
                ),
                    SizedBox(
                      height: 16.h,
                    ),

                CustomButton(
                    onPressed: () {
                      if (_titleController.text.isEmpty) {
                        setState(() {
                          emptyTitle = true;
                        });
                        return;
                      }
                      if (state.assets.isEmpty) {
                        setState(() {
                          emptyImage = true;
                        });
                        return;
                      }
                      if(!widget.isService) {
                        if (_stockController.text.isEmpty) {
                          setState(() {
                            emptyInStock = true;
                          });
                          return;
                        }
                      }
                      if (_priceController.text.trim().isEmpty ||
                          double.tryParse(_priceController.text.trim()) ==
                              null) {
                        setState(() {
                          emptyPrice = true;
                        });
                        return;
                      }
                      Option option = Option((p0) => p0
                        ..currencyModel = currencyModel?.toBuilder()
                        ..currencyUid = currencyModel?.uid
                        ..price = double.parse(_priceController.text.trim())
                        ..discountPrice = double.tryParse(
                            _discountedPriceController.text.trim())
                        ..components =
                            _selectedComponent.toBuiltList().toBuilder()
                        ..optionName = _titleController.text.trim()
                        ..inStock = int.tryParse(_stockController.text.trim())
                        ..optionDescription = _descController.text.trim()
                        ..optionUid = widget.option != null
                            ? widget.option?.optionUid ?? ""
                            : const Uuid().v4()
                        ..assets = state.assets.toBuiltList().toBuilder()
                        ..badgesModel =
                            _selectedBadges.toBuiltList().toBuilder()
                        ..badgesIds = _selectedBadges
                            .map((e) => e.uid ?? "")
                            .toList()
                            .toBuiltList()
                            .toBuilder());
                      Navigator.pop(context, option);
                    },
                    title: (widget.option != null
                            ? "update_options"
                            : "create_options")
                        .tr()
                        .toUpperCase()),
                SizedBox(
                  height: 8.h,
                )
              ],
            ),
          );
        }),
      );
    });
  }
}
