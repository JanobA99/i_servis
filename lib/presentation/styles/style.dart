import 'package:flutter/material.dart';

class Style {
  Style._();

  // colors.

  static const Color white = Color(0xffFFFFFF);

  static const Color primary = Color(0xff6759FF);

  static const Color borderColor = Color(0xffEFEFEF);

  static const Color secondary = Color(0xffEFE7FF);

  static const Color firstColor = Color(0xffE22929);

  static const Color deepPurple = Color(0xffB28CFF);

  static const Color secondColor = Color(0xffFDEAEA);

  static const Color red = Color(0xffB52121);

  static const Color lightRed = Color(0xffF3A9A9);

  static const Color orange = Color(0xffC76B00);

  static const Color green = Color(0xff00B383);

  static const Color lightGreen = Color(0xffB5EBCD);

  static const Color text = Color(0xff1C1C1C);

  static const Color textV1 = Color(0xff0E0E2C);

  static const Color bodyText = Color(0xff585757);

  static const Color subText = Color(0xff535763);

  static const Color subTextBlue = Color(0xff7D8BB7);

  static const Color lightTextBody = Color(0xffE8E8E8);

  static const Color blue = Color(0xff0085FF);

  static const Color black = Color(0xff000000);

  static const Color transparent = Colors.transparent;

  static const BoxShadow blueIconShadow = BoxShadow(
    color: Color(0x20696A6F),
    blurRadius: 12,
    spreadRadius: 2,
  );

  static TextStyle regular24({double size = 24, Color color = text}) {
    return TextStyle(
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle regular16({double size = 16, Color color = text}) {
    return TextStyle(
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle regular14({double size = 14, Color color = text}) {
    return TextStyle(
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle regular12({double size = 12, Color color = text}) {
    return TextStyle(
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle medium20({double size = 20, Color color = text}) {
    return TextStyle(
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle medium16({double size = 16, Color color = text}) {
    return TextStyle(
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle medium14({double size = 14, Color color = text}) {
    return TextStyle(
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle semiBold16({double size = 16, Color color = text}) {
    return TextStyle(
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle semiBold14({double size = 14, Color color = text}) {
    return TextStyle(
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle bold20({double size = 20, Color color = text}) {
    return TextStyle(
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle bold16({double size = 16, Color color = text}) {
    return TextStyle(
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w700,
    );
  }
}
