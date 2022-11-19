import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:universal_shop/presentation/pages/product/widgets/product_card.dart';

import '../../../../infrastructure/models/product/product_model.dart';

class ProductCardRow extends StatelessWidget {
  final List<ProductDetailModel> products;
  final String? badgeUid;

  const ProductCardRow({Key? key, required this.products, this.badgeUid})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
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
        });
  }
}
