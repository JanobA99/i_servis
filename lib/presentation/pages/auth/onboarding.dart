import 'package:flutter/material.dart';
import 'package:i_servis/presentation/styles/theme_wrapper.dart';
import '../../styles/theme.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(
      builder: (BuildContext context, CustomColorSet colors, FontSet fonts,
          IconSet icons, GridTheme controller) {
        return Scaffold(
          body: Container(
            child: Text('Onboarding'),
          ),
        );
      },
    );
  }
}
