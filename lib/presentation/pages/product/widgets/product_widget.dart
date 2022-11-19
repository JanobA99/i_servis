import 'package:built_collection/built_collection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:universal_shop/infrastructure/extensions/custom_string_extension.dart';
import 'package:universal_shop/infrastructure/extensions/remove_zero_in_double.dart';
import 'package:universal_shop/presentation/component/custom_button.dart';
import 'package:universal_shop/presentation/component/custom_cached_network_image.dart';
import 'package:universal_shop/presentation/styles/theme_wrapper.dart';

import '../../../../domain/core/hive_keys.dart';
import '../../../../infrastructure/models/product/product_model.dart';
import '../../../../infrastructure/repositories/product_repo.dart';
import '../../../routes/routes.dart';

class ProductWidget extends StatefulWidget {
  final double margin;
  final ProductDetailModel productDetailModel;
  final int optionInitialIndex;
  final String heroTag;

  const ProductWidget(
      {Key? key,
      this.margin = 24,
      required this.productDetailModel,
      this.optionInitialIndex = 0,
      required this.heroTag})
      : super(key: key);

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  int optionIndex = 0;

  Future<void> addProduct(int amount) async {
    await ProductRepo.addToBasket(ProductDetailModel((p1) => p1
      ..addToBasketAt = DateTime.now().toIso8601String()
      ..uid = widget.productDetailModel.uid
      ..options = [
        Option((p2) => p2
          ..optionUid =
              widget.productDetailModel.options?[optionIndex].optionUid
          ..amount = amount)
      ].toBuiltList().toBuilder()));
  }

Future<void> goCheckOut()async{
    Navigator.push(
        context,
        Routes.getCheckoutPage(context,
            products: [widget.productDetailModel.rebuild((p0) => p0..options=[p0.options[optionIndex].rebuild((p0) => p0..amount=1)].toBuiltList().toBuilder())],
            marketId: widget.productDetailModel.marketsUid?.first ?? "",
            totalPrice:
                widget.productDetailModel.options?[optionIndex].discountPrice ??
                    widget.productDetailModel.options?[optionIndex].price ??
                    0,
            currencyModel:
                widget.productDetailModel.options?[optionIndex].currencyModel, isService: true));
  }

  @override
  void initState() {
    optionIndex = widget.optionInitialIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (context, colors, fonts, icons, _) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      Routes.getImageFullScreen(
                          imageUrl: widget.productDetailModel
                                  .options?[optionIndex].photoUrl
                                  ?.toList() ??
                              []));
                },
                child: Hero(
                  tag: "photo_url${widget.heroTag}",
                  child: CustomCachedNetworkImage(
                    url: widget.productDetailModel.options?[optionIndex]
                            .photoUrl?.first ??
                        "",
                    width: 0.5.sw - widget.margin.w,
                    height: 0.5.sw - widget.margin.w - 64.w,
                    radius: 12,
                  ),
                ),
              ),
              Positioned(
                  top: 8.h,
                  left: 8.w,
                  child: Row(
                      children: List.generate(
                          widget.productDetailModel.options?[optionIndex]
                                  .badgesModel?.length ??
                              0,
                          (index) => Padding(
                                padding: EdgeInsets.symmetric(horizontal: 2.w),
                                child: CustomCachedNetworkImage(
                                  url: widget
                                          .productDetailModel
                                          .options?[optionIndex]
                                          .badgesModel?[index]
                                          .photoUrl ??
                                      "",
                                  width: 24.w,
                                  height: 24.h,
                                ),
                              )).toList()))
            ],
          ),
          SizedBox(
            height: 4.h,
          ),
          RichText(
            maxLines: 2,
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: widget.productDetailModel.title ?? " ",
                  style: fonts.bodyText1.copyWith(color: colors.text, fontWeight: FontWeight.w700, fontSize: 15.sp),
                ),
                TextSpan(
                  text:
                      "\n${widget.productDetailModel.options?[optionIndex].optionDescription ?? ""}",
                  style: fonts.bodyText1.copyWith(fontSize: 13.sp),
                ),
              ],
            ),
          ),
          const Spacer(),
          Hero(
            tag: "product_price${widget.heroTag}",
            child: widget.productDetailModel.options?[optionIndex]
                        .discountPrice ==
                    null
                ? Text(
                    '${widget.productDetailModel.options?[optionIndex].price?.removeZeroInDouble ?? 0} ${widget.productDetailModel.options?[optionIndex].currencyModel?.symbol?.getCurrencySymbol ?? ""}',
                    maxLines: 1,
                    style: fonts.headline3
                        .copyWith(fontSize: 18.sp, fontWeight: FontWeight.w700))
                : RichText(
                    maxLines: 1,
                    overflow: TextOverflow.fade,
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text:
                                '${widget.productDetailModel.options?[optionIndex].discountPrice?.removeZeroInDouble ?? 0} ${widget.productDetailModel.options?[optionIndex].currencyModel?.symbol?.getCurrencySymbol ?? ""} ',
                            style: fonts.headline3.copyWith(
                                fontSize: 18.sp, fontWeight: FontWeight.w700)),
                        TextSpan(
                          text:
                              '${widget.productDetailModel.options?[optionIndex].price?.removeZeroInDouble ?? 0} ${widget.productDetailModel.options?[optionIndex].currencyModel?.symbol?.getCurrencySymbol ?? ""}',
                          style: fonts.bodyText1.copyWith(
                              decoration: TextDecoration.lineThrough,
                              fontSize: 14.sp),
                        ),
                      ],
                    ),
                  ),
          ),
          const Spacer(),
          widget.productDetailModel.options?.length == 1
              ? Text(
                  widget.productDetailModel.options?.first.optionDescription ??
                      "",
                  style: fonts.bodyText1.copyWith(fontSize: 13.sp),
                  maxLines: 1,
                )
              : SizedBox(
                  height: 24.h,
                  child: ScrollablePositionedList.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    initialScrollIndex: optionIndex,
                    itemCount: widget.productDetailModel.options?.length ?? 0,
                    itemBuilder: (context, index) => Container(
                      margin: EdgeInsets.only(right: 2.w),
                      height: 24.h,
                      child: CustomOutlinedButton(
                        isFilled: optionIndex == index,
                        fontSize: 11,
                        horizontalPadding: 0,
                        verticalPadding: 0,
                        title: widget.productDetailModel.options?[index]
                                .optionName ??
                            "",
                        onPressed: () {
                          setState(() {
                            optionIndex = index;
                          });
                        },
                      ),
                    ),
                  ),
                ),
          const Spacer(),
          Hero(
              tag: "add_to_cart${widget.heroTag}",
              child: ValueListenableBuilder(
                  valueListenable:
                      Hive.box<ProductDetailModel>(HiveKeys.baskets)
                          .listenable(),
                  builder: (context, Box<ProductDetailModel> box, _) {
                    List<ProductDetailModel> products = box.values.toList();
                    int index = products.lastIndexWhere((element) =>
                        element.uid == widget.productDetailModel.uid);
                    bool isService = widget.productDetailModel.isService??false;
                    if (index == -1) {
                      return CustomButton(
                        onPressed: () async {
                          if(isService) {
                          await  goCheckOut();
                             }else{
                            if ((widget.productDetailModel.options?[optionIndex]
                                .inStock ?? 0) <= 0) {
                              EasyLoading.showError("you_reach_limit".tr());
                            } else {
                              await addProduct(1);
                            }
                          }
                        },
                        title: isService ? "booking".tr() : "add".tr(),
                        verticalPadding: 6,
                        borderRadius: 12,
                      );
                    } else {
                      int i = products[index].options?.lastIndexWhere((p0) =>
                              p0.optionUid ==
                              widget.productDetailModel.options?[optionIndex]
                                  .optionUid) ??
                          -1;
                      if(i==-1){
                        return CustomButton(
                          onPressed: () async {
                            if((widget.productDetailModel.options?[optionIndex].inStock ?? 0)<=0){
                              EasyLoading.showError("you_reach_limit".tr());
                            }else {
                              await addProduct(1);
                            }
                          },
                          title:  isService ? "booking".tr() : "add".tr(),
                          verticalPadding: 6,
                          borderRadius: 12,
                        );
                      }else {
                        return CustomProductButton(
                            text: (products[index].options?[i]
                                .amount ??
                                0)
                                .toString(),
                            addOnPressed: () async {
                              if((widget.productDetailModel.options?[optionIndex].inStock ?? 0)<=(products[index].options?[i]
                                  .amount ??
                                  0)){
                                EasyLoading.showError("you_reach_limit".tr());
                              }else {
                                await addProduct(1);
                              }
                            },
                            removeOnPressed: () async {
                              await addProduct(-1);
                            });
                      }
                    }
                  }))
        ],
      );
    });
  }
}
