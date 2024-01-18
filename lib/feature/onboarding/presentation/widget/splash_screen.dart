import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:recycle_rush_fe/core/styles/app_color.dart';
import 'package:recycle_rush_fe/core/styles/typography.dart';
import 'package:recycle_rush_fe/feature/onboarding/presentation/view/onboarding_view.dart';

class RecycleRushWidgetSplashScreen extends StatelessWidget {
  const RecycleRushWidgetSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Center(
        child: SizedBox(
          width: 227,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Recycle Rush",
                style: RecycleRushHeadingTypography.megaLarge(),
              )
            ],
          ),
        ),
      ),
      nextScreen: const RecycleRushViewOnboarding(),
      splashIconSize: 350,
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: RecycleRushColor.green.shade400,
      animationDuration: const Duration(milliseconds: 700),
      duration: 500,
    );
  }
}
