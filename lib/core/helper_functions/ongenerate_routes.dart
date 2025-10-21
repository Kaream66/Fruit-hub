import 'package:flutter/material.dart';
import 'package:fruits_hub/features/onboarding/presentation/views/on_boarding_view.dart';
import 'package:fruits_hub/features/splash/presentation/views/spalsh_view.dart';

Route<dynamic>? onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (_) => SplashView());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (_) => OnBoardingView());
    // Add other routes here
    default:
      return null;
  }
}
