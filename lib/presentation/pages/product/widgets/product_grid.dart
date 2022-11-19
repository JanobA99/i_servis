import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:universal_shop/presentation/pages/product/widgets/product_card.dart';

import '../../../../infrastructure/models/product/product_model.dart';

class ProductGrid extends StatelessWidget {
  final List<ProductDetailModel> products;
  final String? badgeUid;

  const ProductGrid({Key? key, required this.products, this.badgeUid})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1.sw / 568.h),
      children: List.generate(products.length, (index){
        int optionIndex = 0;
            if (badgeUid != null) {
              int i = products[index].options?.indexWhere(
                      (p0) => p0.badgesIds?.contains(badgeUid) ?? false) ??
                  0;
              if(i!=-1){
                optionIndex = i;
              }
            }
            return ProductCard(
              productDetailModel: products[index],
              optionInitialIndex: optionIndex,
            );
      }),
    );
    // return GridView.builder(
    //   shrinkWrap: true,
    //   padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
    //   itemCount: products.length,
    //   itemBuilder: (context, index) {
    //     int optionIndex = 0;
    //     if (badgeUid != null) {
    //       int i = products[index].options?.indexWhere(
    //               (p0) => p0.badgesIds?.contains(badgeUid) ?? false) ??
    //           0;
    //       if(i!=-1){
    //         optionIndex = i;
    //       }
    //     }
    //     return ProductCard(
    //       productDetailModel: products[index],
    //       optionInitialIndex: optionIndex,
    //     );
    //   }, gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
    //   crossAxisCount: 2,
    //   childAspectRatio: 1.sw/568.h
    // ),);
  }
}
