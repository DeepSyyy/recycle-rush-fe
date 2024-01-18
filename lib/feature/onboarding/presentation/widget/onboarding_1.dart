import 'package:flutter/material.dart';
import 'package:recycle_rush_fe/core/styles/app_color.dart';
import 'package:recycle_rush_fe/core/styles/typography.dart';

class RecycleRushOnboardingWidgetFirst extends StatelessWidget {
  const RecycleRushOnboardingWidgetFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/globy-onboard-1.png',
          ),
          const SizedBox(height: 51),
          Text(
            "Hello!",
            style: RecycleRushHeadingTypography.megaLarge(
                color: AppColor.textPrimary),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 22),
          SizedBox(
            width: 287,
            child: Text(
              "Welcome to Recycle Rush, let’s explore many things you can do in this app.",
              style: RecycleRushParagraph.medium(color: AppColor.textPrimary),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
