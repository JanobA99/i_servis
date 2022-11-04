part of 'theme.dart';

class CustomColorSet {
  final Color white;

  final Color primary;

  final Color borderColor;

  final Color secondary;

  final Color firstColor;

  final Color deepPurple;

  final Color secondColor;

  final Color red;

  final Color lightRed;

  final Color orange;

  final Color green;

  final Color lightGreen;

  final Color text;

  final Color textV1;

  final Color bodyText;

  final Color subText;

  final Color subTextBlue;

  final Color lightTextBody;

  final Color blue;

  final Color black;

  final Color transparent = Colors.transparent;

  CustomColorSet._({
    required this.white,
    required this.primary,
    required this.borderColor,
    required this.secondary,
    required this.firstColor,
    required this.deepPurple,
    required this.secondColor,
    required this.red,
    required this.lightRed,
    required this.orange,
    required this.green,
    required this.lightGreen,
    required this.text,
    required this.textV1,
    required this.bodyText,
    required this.subText,
    required this.subTextBlue,
    required this.lightTextBody,
    required this.blue,
    required this.black,
  });

  factory CustomColorSet._create(CustomThemeMode mode) {
    final isLight = mode.isLight;
    final dark = isLight ? Style.black : Style.borderColor;

    final white = isLight ? Style.white : Style.white;

    final primary = isLight ? Style.primary : Style.primary;

    final borderColor = isLight ? Style.borderColor : Style.borderColor;

    final secondary = isLight ? Style.secondary : Style.secondary;

    final firstColor = isLight ? Style.firstColor : Style.firstColor;

    final deepPurple = isLight ? Style.deepPurple : Style.deepPurple;

    final secondColor = isLight ? Style.secondColor : Style.secondColor;

    final red = isLight ? Style.red : Style.red;

    final lightRed = isLight ? Style.lightRed : Style.lightRed;

    final orange = isLight ? Style.orange : Style.orange;

    final green = isLight ? Style.green : Style.green;

    final lightGreen = isLight ? Style.lightGreen : Style.lightGreen;

    final Color text = isLight ? Style.text : Style.text;

    final Color textV1 = isLight ? Style.textV1 : Style.textV1;

    final Color bodyText = isLight ? Style.bodyText : Style.bodyText;

    final Color subText = isLight ? Style.subText : Style.subText;

    final Color subTextBlue = isLight ? Style.subTextBlue : Style.subTextBlue;

    final Color lightTextBody =
        isLight ? Style.lightTextBody : Style.lightTextBody;

    final Color blue = isLight ? Style.blue : Style.blue;

    final Color black = isLight ? Style.black : Style.black;

    return CustomColorSet._(
      white: white,
      primary: primary,
      borderColor: borderColor,
      secondary: secondary,
      firstColor: firstColor,
      deepPurple: deepPurple,
      secondColor: secondColor,
      red: red,
      lightRed: lightRed,
      orange: orange,
      green: green,
      lightGreen: lightGreen,
      text: text,
      textV1: textV1,
      bodyText: bodyText,
      subText: subText,
      subTextBlue: subTextBlue,
      lightTextBody: lightTextBody,
      blue: blue,
      black: black,
    );
  }

  static CustomColorSet createOrUpdate(CustomThemeMode mode) {
    return CustomColorSet._create(mode);
  }
}
