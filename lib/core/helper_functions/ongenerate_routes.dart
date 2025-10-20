import 'package:flutter/material.dart';
import 'package:fruits_hub/features/splash/presentation/views/spalsh_view.dart';

Route<dynamic>? onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (_) => SplashView());
    case '/':
      return MaterialPageRoute(builder: (_) => SplashView());
    // Add other routes here
    default:
      return null;
  }
}
