part of 'theme.dart';

class CustomColorSet {
  final Color text;

  final Color bodyText;
  final Color redText;

  final Color subText;

  final Color checkColor;
  final Color lightBlack;

  final Color primary;

  final Color white;
  final Color blue;
  final Color icon;
  final Color dark;
  final Color grey;
  final Color grey1;
  final Color backgroundColor;

  final Color backgroundColorVariant;

  final Color secondary;

  final Color lightTextBody;

  final Color error;

  final Color transparent;

  final Color secondaryVariant;

  final Color calendarSelect;

  final Color firstColor;

  final Color yellowStar;

  final Color linkText;
  final Color borderColor;
  final Color iconSelect;
  final Color textV1;
  final Color requestedColor;
  final Color confirmed;
  final Color input;
  final Color softColor;
  final Color dividerColor;

  CustomColorSet._({
    required this.calendarSelect,
    required this.redText,
    required this.firstColor,
    required this.blue,
    required this.grey1,
    required this.checkColor,
    required this.lightBlack,
    required this.yellowStar,
    required this.borderColor,
    required this.linkText,
    required this.dark,
    required this.secondaryVariant,
    required this.text,
    required this.iconSelect,
    required this.bodyText,
    required this.subText,
    required this.primary,
    required this.white,
    required this.icon,
    required this.grey,
    required this.backgroundColor,
    required this.backgroundColorVariant,
    required this.secondary,
    required this.lightTextBody,
    required this.error,
    required this.transparent,
    required this.textV1,
    required this.confirmed,
    required this.requestedColor,
    required this.input,
    required this.softColor,
    required this.dividerColor,
  });

  factory CustomColorSet._create(CustomThemeMode mode) {
    final isLight = mode.isLight;

    final text = isLight ? Style.text : Style.white;

    final bodyText = isLight ? Style.bodyText : Style.white;

    final subText = isLight ? Style.subText : Style.lightTextBody;

    final primary = isLight ? Style.white : Style.primary;

    const white = Style.white;

    const icon = Style.icon;

    final grey = isLight ? Style.grey : Style.lightGrey;

    final backgroundColor = isLight ? Style.white : Style.text;

    final backgroundColorVariant = isLight ? Style.white : Style.text;

    const secondary = Style.secondary;

    final lightTextBody = isLight ? Style.lightTextBody : Style.text;

    const error = Style.error;

    const transparent = Style.transparent;

    const secondaryVariant = Style.secondaryVariant;

    const linkText = Style.linkText;

    const calendarSelect = Style.secondary;

    const yellowStar = Style.yellowStar;
    const blue = Style.blue;
    const firstColor = Style.firstColor;
    const borderColor = Style.borderColor;
    const iconSelect = Style.iconSelect;
    const checkColor = Style.checkColor;
    const redText = Style.redText;

    const grey1 = Style.grey1;
    const dark = Style.dark;
    const lightBlack = Style.lightBlack;
    const textV1 = Style.textV1;
    const requestedColor = Style.requested;
    const confirmed = Style.confirmed;
    const input = Style.input;
    const softColor = Style.softColor;
    const dividerColor = Style.dividerColor;

    return CustomColorSet._(
        text: text,
        borderColor: borderColor,
        bodyText: bodyText,
        checkColor: checkColor,
        lightBlack: lightBlack,
        iconSelect: iconSelect,
        subText: subText,
        primary: primary,
        white: white,
        redText: redText,
        icon: icon,
        grey: grey,
        grey1: grey1,
        backgroundColor: backgroundColor,
        backgroundColorVariant: backgroundColorVariant,
        secondary: secondary,
        lightTextBody: lightTextBody,
        error: error,
        transparent: transparent,
        secondaryVariant: secondaryVariant,
        linkText: linkText,
        calendarSelect: calendarSelect,
        yellowStar: yellowStar,
        firstColor: firstColor,
        blue: blue,
        dark: dark,
        textV1: textV1,
        confirmed: confirmed,
        requestedColor: requestedColor,
        input: input,
        softColor: softColor,
        dividerColor: dividerColor);
  }

  static CustomColorSet createOrUpdate(CustomThemeMode mode) {
    return CustomColorSet._create(mode);
  }
}
