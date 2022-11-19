import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:universal_shop/presentation/pages/product/widgets/product_widget.dart';
import 'package:universal_shop/presentation/routes/routes.dart';
import 'package:universal_shop/presentation/styles/theme_wrapper.dart';

import '../../../../infrastructure/models/product/product_model.dart';

class ProductCard extends StatelessWidget {
  final ProductDetailModel productDetailModel;
  final int optionInitialIndex;
  const ProductCard({Key? key, required this.productDetailModel, this.optionInitialIndex = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String heroTag = DateTime.now().toIso8601String();
    return ThemeWrapper(builder: (context, colors, fonts, icons, _) {
      return GestureDetector(
        onTap: (){
          Navigator.push(context, Routes.getProductDetail(context, product: productDetailModel, heroTag: heroTag, optionIndex: optionInitialIndex));
        },
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
          surfaceTintColor: colors.backgroundColor,
          child: Container(
            width: 0.5.sw - 32.w,
            padding: EdgeInsets.all(2.w),
            margin: EdgeInsets.all(4.w),
            child:  ProductWidget(
              heroTag: heroTag,
              optionInitialIndex: optionInitialIndex,
              margin: 6,
              productDetailModel: productDetailModel,
            ),
          ),
        ),
      );
    });
  }
}
