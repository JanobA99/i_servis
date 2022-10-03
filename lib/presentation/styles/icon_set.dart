part of 'theme.dart';

class IconSet {
  final String logo;

  IconSet._({
    required this.logo,
  });

  static IconSet get create {
    return IconSet._(
      logo: 'assets/icons/app_logo.svg',
    );
  }
}
