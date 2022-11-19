import 'package:built_collection/built_collection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:share_plus/share_plus.dart';
import 'package:universal_shop/infrastructure/extensions/custom_string_extension.dart';
import 'package:universal_shop/infrastructure/extensions/firebase_user_to_user_model.dart';
import 'package:universal_shop/infrastructure/extensions/remove_zero_in_double.dart';
import 'package:universal_shop/infrastructure/models/product/product_model.dart';
import 'package:universal_shop/presentation/component/custom_button.dart';
import 'package:universal_shop/presentation/component/custom_slider.dart';
import 'package:universal_shop/presentation/component/rate_indicator.dart';
import 'package:universal_shop/presentation/pages/markets/widgets/comment_widget.dart';
import 'package:universal_shop/presentation/pages/product/widgets/option_widget.dart';
import 'package:universal_shop/presentation/pages/product/widgets/products_row_with_title.dart';
import 'package:universal_shop/presentation/styles/theme.dart';
import 'package:universal_shop/presentation/styles/theme_wrapper.dart';

import '../../../application/product_bloc/product_bloc.dart';
import '../../../domain/core/hive_keys.dart';
import '../../../infrastructure/models/category/category_model.dart';
import '../../../infrastructure/repositories/product_repo.dart';
import '../../../infrastructure/services/firebase_service.dart';
import '../../component/custom_cached_network_image.dart';
import '../../routes/routes.dart';

class ProductDetail extends StatefulWidget {
  final ProductDetailModel product;
  final int optionIndex;
  final String heroTag;

  const ProductDetail(
      {Key? key,
      required this.product,
      this.optionIndex = 0,
      required this.heroTag})
      : super(key: key);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  int optionIndex = 0;
  List comments = [
    "Bu mahsulot sifati juda baland va mutahassis tavsiyalariga amal qilgan holda qo'llansa juda yaxshi natija beradi",
    "Men bu xizmatlardan yana bir bor foydalangan bo'lardim sababi muthassis o'z ishining professionali"
  ];
  Future<void> addProduct(int amount) async {
    await ProductRepo.addToBasket(ProductDetailModel((p1) => p1
      ..addToBasketAt = DateTime.now().toIso8601String()
      ..uid = widget.product.uid
      ..options = [
        Option((p2) => p2
          ..optionUid = widget.product.options?[optionIndex].optionUid
          ..amount = amount)
      ].toBuiltList().toBuilder()));
  }

  Future<void> goCheckOut() async {
    Navigator.push(
        context,
        Routes.getCheckoutPage(context,
            products: [
              widget.product.rebuild((p0) => p0
                ..options = [
                  p0.options[optionIndex].rebuild((p0) => p0..amount = 1)
                ].toBuiltList().toBuilder())
            ],
            marketId: widget.product.marketsUid?.first ?? "",
            totalPrice: widget.product.options?[optionIndex].discountPrice ??
                widget.product.options?[optionIndex].price ??
                0,
            currencyModel: widget.product.options?[optionIndex].currencyModel,
            isService: true));
  }

  @override
  void initState() {
    optionIndex = widget.optionIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (BuildContext context, CustomColorSet colors,
        FontSet fonts, IconSet icons, _) {
      User? user = FirebaseAuth.instance.currentUser;

      int index = widget.product.markets!.lastIndexWhere((element) =>
      element.admins?.contains((user?.getUid)) ?? false);
      return Scaffold(
          backgroundColor: colors.backgroundColor,
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          floatingActionButton: index == -1
              ? null
              : FloatingActionButton(
                  backgroundColor: colors.primary,
                  onPressed: () {
                    if (index != -1) {
                      Navigator.push(
                          context,
                          Routes.getCreateProduct(context,
                              productDetail: widget.product));
                    }
                  },
                  child: SvgPicture.asset(
                    icons.edit,
                    color: colors.white,
                    width: 24.w,
                    height: 24.h,
                  ),
                ),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
                color: colors.backgroundColor,
                border: Border(top: BorderSide(color: colors.subText))),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 8.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Hero(
                        tag: "product_price${widget.heroTag}",
                        child: SizedBox(
                          width: 1.sw / 2,
                          child: widget.product.options?[optionIndex]
                                      .discountPrice ==
                                  null
                              ? Text(
                                  '${widget.product.options?[optionIndex].price?.removeZeroInDouble ?? 0} ${widget.product.options?[optionIndex].currencyModel?.symbol?.getCurrencySymbol ?? ""}',
                                  maxLines: 2,
                                  style: fonts.headline3.copyWith(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20.sp),
                                )
                              : SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${widget.product.options?[optionIndex].discountPrice?.removeZeroInDouble ?? 0} ${widget.product.options?[optionIndex].currencyModel?.symbol?.getCurrencySymbol ?? ""} ',
                                        style: fonts.headline3.copyWith(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 20.sp),
                                      ),
                                      Text(
                                        '${widget.product.options?[optionIndex].price?.removeZeroInDouble ?? 0} ${widget.product.options?[optionIndex].currencyModel?.symbol?.getCurrencySymbol ?? ""}',
                                        style: fonts.headline3.copyWith(
                                            decoration:
                                                TextDecoration.lineThrough,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 20.sp),
                                      )
                                    ],
                                  ),
                                ),
                        ),
                      ),
                      SizedBox(
                          width: 1.sw / 2 - 32.w,
                          child: Hero(
                            tag: "add_to_cart${widget.heroTag}",
                            child: ValueListenableBuilder(
                                valueListenable: Hive.box<ProductDetailModel>(
                                        HiveKeys.baskets)
                                    .listenable(),
                                builder:
                                    (context, Box<ProductDetailModel> box, _) {
                                      List<ProductDetailModel> products =
                                      box.values.toList();
                                  int index = products.lastIndexWhere(
                                      (element) =>
                                          element.uid == widget.product.uid);
                                  bool isService =
                                      widget.product.isService ?? false;
                                  if (index == -1) {
                                    return CustomButton(
                                      onPressed: () async {
                                        if (isService) {
                                          await goCheckOut();
                                        } else {
                                          if ((widget
                                                      .product
                                                      .options?[optionIndex]
                                                      .inStock ??
                                                  0) <=
                                              0) {
                                            EasyLoading.showError(
                                                "you_reach_limit".tr());
                                          } else {
                                            await addProduct(1);
                                          }
                                        }
                                      },
                                      title:  isService ? "booking".tr() : "add".tr(),
                                      verticalPadding: 6,
                                      borderRadius: 12,
                                    );
                                  } else {
                                    int i = products[index]
                                            .options
                                            ?.lastIndexWhere((p0) =>
                                                p0.optionUid ==
                                                widget
                                                    .product
                                                    .options?[optionIndex]
                                                    .optionUid) ??
                                        -1;
                                    if (i == -1) {
                                      return CustomButton(
                                        onPressed: () async {
                                          if ((widget
                                                      .product
                                                      .options?[optionIndex]
                                                      .inStock ??
                                                  0) <=
                                              0) {
                                            EasyLoading.showError(
                                                "you_reach_limit".tr());
                                          } else {
                                            await addProduct(1);
                                          }
                                        },
                                        title: "add".tr(),
                                        verticalPadding: 6,
                                        borderRadius: 12,
                                      );
                                    } else {
                                      return CustomProductButton(
                                          text: (products[index]
                                                      .options?[i]
                                                      .amount ??
                                                  0)
                                              .toString(),
                                          addOnPressed: () async {
                                            if ((widget
                                                        .product
                                                        .options?[optionIndex]
                                                        .inStock ??
                                                    0) <=
                                                (products[index]
                                                        .options?[i]
                                                        .amount ??
                                                    0)) {
                                              EasyLoading.showError(
                                                  "you_reach_limit".tr());
                                            } else {
                                              await addProduct(1);
                                            }
                                          },
                                          removeOnPressed: () async {
                                            await addProduct(-1);
                                          });
                                    }
                                  }
                                }),
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).padding.bottom + 8.h,
                )
              ],
            ),
          ),
          body: NestedScrollView(
            floatHeaderSlivers: true,
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              List<CategoryOrInnerSubcategoryOrBadgeModel> badges =
                  widget.product.options?[optionIndex].badgesModel?.toList() ??
                      [];
              return [
                SliverAppBar(
                  automaticallyImplyLeading: true,
                  forceElevated: true,
                  floating: true,
                  backgroundColor: colors.transparent,
                  expandedHeight: 1.sw - MediaQuery.of(context).padding.top,
                  collapsedHeight: 0,
                  pinned: true,
                  snap: true,
                  toolbarHeight: 0,
                  elevation: 0,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Container(
                      height: 1.sw,
                      width: 1.sw,
                      color: colors.primary,
                      child: Stack(
                        children: [
                          Hero(
                            tag: "photo_url${widget.heroTag}",
                            child: CustomSlider(
                              height: 1.sw,
                              width: 1.sw,
                              photoUrls: widget
                                      .product.options?[optionIndex].photoUrl
                                      ?.toList() ??
                                  [],
                            ),
                          ),
                          Positioned(
                            top: MediaQuery.of(context).padding.top,
                            left: 16,
                            child: const CustomBackButton(
                              dark: true,
                            ),
                          ),
                          for (var i = 0;
                              i < (badges.length >= 3 ? 3 : badges.length);
                              i++)
                            Align(
                              alignment: i == 0
                                  ? Alignment.topRight
                                  : i == 1
                                      ? Alignment.bottomRight
                                      : Alignment.bottomLeft,
                              child: Padding(
                                padding: i == 0
                                    ? EdgeInsets.only(top: 48.h, right: 16.w)
                                    : EdgeInsets.all(16.sm),
                                child: CustomCachedNetworkImage(
                                  url: badges[i].photoUrl ?? "",
                                  height: 40.h,
                                  width: 40.w,
                                ),
                              ),
                            )
                        ],
                      ),
                    ),
                  ),
                )
              ];
            },
            body: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(top: 16.h, right: 16.w, left: 16.w),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const CustomRateStar(
                          rating: 4.6,
                          itemSize: 20,
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        Text(
                          "4.6 | 5656 ${"orders".tr()}",
                          style: fonts.bodyText1,
                        )
                      ],
                    ),
                  ),
                  ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
                    title: Text(
                      widget.product.title ?? "",
                      style: fonts.headline3.copyWith(
                          fontWeight: FontWeight.w900, fontSize: 21.sp),
                    ),
                    subtitle: (widget.product.markets != null &&
                            widget.product.markets!.isNotEmpty)
                        ? RichText(
                            // "marketModel.title",
                            // style: fonts.bodyText1.copyWith(color: colors.text),
                            text: TextSpan(
                                style: fonts.bodyText1
                                    .copyWith(color: colors.text),
                                text: 'from '.tr(),
                                children: [
                                  TextSpan(
                                    style: fonts.bodyText1
                                        .copyWith(color: colors.primary),
                                    text: widget.product.markets
                                            ?.toList()
                                            .first
                                            .title ??
                                        "",
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        if (widget.product.markets != null) {
                                          Navigator.push(
                                              context,
                                              Routes.getMarketDetail(context,
                                                  market: widget
                                                      .product.markets!.first));
                                        }
                                      },
                                  )
                                ]),
                          )
                        : null,
                    trailing: IconButton(
                        onPressed: () {
                          Share.share(
                              '${widget.product.title}\n${widget.product.options?[optionIndex].optionDescription ?? ""}\n\n${"buy_my_product".tr()}:\n${widget.product.dynamicLink}');
                        },
                        icon: Icon(
                          Icons.share,
                          color: colors.primary,
                        )),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                    child: Text(
                      widget.product.options?[optionIndex].optionDescription ??
                          "",
                      style: fonts.bodyText1.copyWith(color: colors.text),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        OptionWidget(
                            options: widget.product.options?.toList() ?? [],
                            isCreate: false,
                            onAdd: () {},
                            onRemove: (i) {},
                            onEdit: (i) {},
                            selectedIndex: optionIndex,
                            changeIndex: (changeIndex) {
                              setState(() {
                                optionIndex = changeIndex;
                              });
                            }),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Text(
                      "comments".tr(),
                      style:
                          fonts.subtitle2.copyWith(fontWeight: FontWeight.w600),
                    ),
                  ),
                  ListView.builder(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.h),
                          child:  CustomCommentReply(comment: comments[index],),
                        );
                      }),
                  SizedBox(height: 16.h),
                  for (int i = 0;
                      i < (widget.product.subcategory?.length ?? 0);
                      i++)
                    BlocProvider(
                      create: (_) => ProductBloc(
                          productRepo:
                              ProductRepo(firebaseService: FirebaseService()),
                          firebaseService: FirebaseService()),
                      child: ProductsRowWithTitle(
                        query: widget.product.subcategory?[i].uid ?? "",
                        field: "subcategory_ids",
                        title: widget.product.subcategory?[i].title ??
                            "similar_product".tr(),
                      ),
                    ),
                  SizedBox(
                    height: 48.h,
                  ),
                ],
              ),
            ),
          ));
    });
  }
}
