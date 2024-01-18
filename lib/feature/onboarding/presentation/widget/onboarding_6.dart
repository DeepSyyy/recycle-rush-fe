import 'package:flutter/material.dart';
import 'package:recycle_rush_fe/core/styles/app_color.dart';
import 'package:recycle_rush_fe/core/styles/typography.dart';
import 'package:recycle_rush_fe/core/utils/button.dart';

class RecycleRushOnboardingWidgetsixth extends StatelessWidget {
  const RecycleRushOnboardingWidgetsixth({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/globy-onboard-final.png"),
          const SizedBox(height: 51),
          Text(
            "Ready?",
            style: RecycleRushHeadingTypography.megaLarge(
                color: AppColor.textPrimary),
          ),
          const SizedBox(height: 22),
          Text(
            "Let's start the journey!",
            style: RecycleRushParagraph.medium(color: AppColor.textPrimary),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 33),
          const RecycleRushElevatedButton(
            btnHeight: 53,
            btnColor: AppColor.primary,
            btnText: "Get Started!",
            routeName: '/sign-in',
            isEnabled: true,
          ),
        ],
      ),
    );
  }
}
