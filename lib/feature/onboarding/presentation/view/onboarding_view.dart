import 'package:flutter/material.dart';
import 'package:recycle_rush_fe/feature/onboarding/presentation/widget/onboarding_main.dart';

class RecycleRushViewOnboarding extends StatelessWidget {
  const RecycleRushViewOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: RecycleRushOnboardingWidgetMain(),
    );
  }
}
