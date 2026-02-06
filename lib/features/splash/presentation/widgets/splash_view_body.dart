import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/core/services/shared_prefernces_singlton.dart';
import 'package:fruits_hub/features/auth/presentation/views/log_in_view.dart';
import 'package:fruits_hub/features/splash/presentation/views/spalsh_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    executeNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset('assets/images/plant.svg'),
          ],
        ),
        SvgPicture.asset('assets/images/logo.svg'),
        SvgPicture.asset(
          'assets/images/splash_bottom.svg',
          fit: BoxFit.fill,
        ),
      ],
    );
  }

  void executeNavigation() {
    bool isOnBoardingViewSeen =
        Prefs().getBool(kIsOnBoardingViewSeen) ?? false;
    Future.delayed(const Duration(seconds: 3), () {
      if (isOnBoardingViewSeen) {
        Navigator.pushReplacementNamed(
          context,
          SplashView.routeName,
        );
      } else {
        Navigator.pushReplacementNamed(
          context,
          LogInView.routeName,
        );
      }
    });
  }
}
