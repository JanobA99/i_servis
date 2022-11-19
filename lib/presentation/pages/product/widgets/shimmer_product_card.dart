import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:universal_shop/presentation/component/custom_shimmer_widget.dart';

import '../../../styles/theme_wrapper.dart';

class ShimmerProductCard extends StatelessWidget {
  const ShimmerProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (context, colors, fonts, icons, _) {
        return Container(
          width: 0.5.sw - 24.w,
          padding: EdgeInsets.all(6.w),
          margin: EdgeInsets.all(4.w),
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          boxShadow: [
            BoxShadow(
                color: colors.grey.withOpacity(0.4),
                blurRadius: 4,
                spreadRadius: 0,
                offset: const Offset(1, 1)),
            BoxShadow(
                color: colors.grey.withOpacity(0.4),
                blurRadius: 2,
                spreadRadius: 0,
                offset: const Offset(0, 0))
          ],
          color: colors.backgroundColor),
          child:  Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomShimmerWidget(
            child: Container(
              width: 0.5.sw - 6.w,
              height: 0.5.sw - 70.w,
              decoration: BoxDecoration(
                color: colors.grey,
                borderRadius: BorderRadius.circular(12.r)
              ),
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          CustomShimmerWidget(
            child: Container(
              width: 0.5.sw - 36.w,
              height: 16.h,
              color: colors.grey,
            ),
          ),
          const Spacer(),
          CustomShimmerWidget(
            child: Container(
              width: 0.5.sw - 72.w,
              height: 16.h,
              color: colors.grey,
            ),
          ),
          const Spacer(),
          CustomShimmerWidget(
            child: Container(
              width: 0.5.sw - 108.w,
              height: 16.h,
              color: colors.grey,
            ),
          ),
          const Spacer(),
          CustomShimmerWidget(
            child: Container(
              width: 0.5.sw - 6.w,
              height: 36.h,
              decoration: BoxDecoration(
                  color: colors.grey,
                  borderRadius: BorderRadius.circular(12.r)
              ),
            ),
          ),
        ],
          ),
        );
      }
    );
  }
}
