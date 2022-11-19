import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:universal_shop/infrastructure/extensions/remove_zero_in_double.dart';
import 'package:universal_shop/presentation/component/custom_button.dart';
import 'package:universal_shop/presentation/styles/theme.dart';
import 'package:universal_shop/presentation/styles/theme_wrapper.dart';

import '../../../../infrastructure/models/product/product_model.dart';

class OptionWidget extends StatelessWidget {
  final List<Option> options;
  final Function() onAdd;
  final Function(Option option) onRemove;
  final Function(Option option) onEdit;
  final int selectedIndex;
  final Function(int index) changeIndex;
  final bool isCreate;

  const OptionWidget(
      {Key? key, required this.options, required this.onAdd, required this.onRemove, required this.onEdit, required this.selectedIndex, required this.changeIndex, required this.isCreate})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (BuildContext context, CustomColorSet colors,
        FontSet fonts, IconSet icons, _) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text(
              "options".tr(),
              style: fonts.subtitle1,
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: isCreate ?  (List.generate(
                options.length,
                    (index) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: CustomOutlinedButton(
                      textColor:
                      selectedIndex == index ? colors.primary : null,
                      borderColor: selectedIndex == index
                          ? colors.primary
                          : colors.subText,
                      onPressed: ()=>changeIndex(index),
                      title: options[index].optionName ?? ""),
                ),
              )..add(CustomOutlinedButton(
                  borderColor: colors.grey,
                  onPressed: onAdd,
                  title: "+"))) : List.generate(
                options.length,
                    (index) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: CustomOutlinedButton(
                      textColor:
                      selectedIndex == index ? colors.primary : null,
                      borderColor: selectedIndex == index
                          ? colors.primary
                          : colors.subText,
                      onPressed: ()=>changeIndex(index),
                      title: options[index].optionName ?? ""),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Detail",
                  style: fonts.subtitle1.copyWith(fontWeight: FontWeight.w500),
                ),
                Visibility(
                  visible: isCreate,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed:()=> onEdit(options[selectedIndex]),
                          icon: SvgPicture.asset(
                            icons.edit,
                            color: colors.primary,
                          )),
                      IconButton(
                          onPressed:()=> onRemove(options[selectedIndex]),
                          icon: SvgPicture.asset(
                            icons.close,
                            color: colors.primary,
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text(
             options[selectedIndex].optionDescription ?? "",
              style: fonts.bodyText1.copyWith(color: colors.text),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12.sm),
            child: Wrap(
              children: List.generate(
                  options[selectedIndex].components?.length??0,
                      (index) => Container(
                    margin: EdgeInsets.all(4.sm),
                    padding: EdgeInsets.symmetric(
                        vertical: 12.h, horizontal: 16.w),
                    decoration: BoxDecoration(
                        color: colors.lightTextBody,
                        borderRadius:
                        BorderRadius.all(Radius.circular(12.r))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          options[selectedIndex].components![index]
                              .name ??
                              "",
                          style: fonts.caption
                              .copyWith(color: colors.bodyText),
                        ),
                        Text(
                          "${options[selectedIndex].components![index].amount?.removeZeroInDouble ?? ""} ${options[selectedIndex].components![index].unit?.unit ?? ""}",
                          style:
                          fonts.bodyText1.copyWith(color: colors.text),
                        ),
                      ],
                    ),
                  )),
            ),
          )
        ],
      );
    });
  }
}


