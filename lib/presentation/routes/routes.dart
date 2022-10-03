import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:i_servis/presentation/pages/auth/onboarding.dart';

import '../../domain/auth/auth_failure.dart';
import '../../infrastructure/services/db_service.dart';
import '../pages/auth/auth_intro.dart';
import '../pages/core/app_widget.dart';
import '../pages/core/no_connection.dart';
import '../pages/home/home_pages.dart';

class AppRoutes {
  static PageRoute getAppWidget(
    DBService dbService,
    ConnectivityResult connectivityResult,
  ) =>
      MaterialPageRoute(
        builder: (_) => AppWidget(
          dbService: dbService,
          connectivityX: connectivityResult,
        ),
      );

  static MaterialPageRoute onBoarding() {
    return MaterialPageRoute(builder: (_) => const OnBoardingPage());
  }

  static MaterialPageRoute getHome() => MaterialPageRoute(
        builder: (_) => const HomePage(),
      );

  static MaterialPageRoute getNetworkNotFound() => MaterialPageRoute(
        builder: (_) => const NoConnection(),
      );

  static PageRoute onGenerateRoute({
    required BuildContext context,
    required AuthFailure? authFailure,
    required bool notConnection,
  }) {
    if (notConnection) {
      return getNetworkNotFound();
    } else if (authFailure == null) {
      return getHome();
    } else {
      return onBoarding();
    }
  }
}
