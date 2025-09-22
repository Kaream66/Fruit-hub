import 'package:flutter/material.dart';
import 'package:fruits_ecommerce/core/helper_functions/on_generate_router.dart';
import 'package:fruits_ecommerce/features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(FruitHub());
}

class FruitHub extends StatelessWidget {
  const FruitHub({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
    );
  }
}
