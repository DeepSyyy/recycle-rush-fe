import 'package:flutter/material.dart';
import 'package:recycle_rush_fe/core/styles/app_color.dart';
import 'package:recycle_rush_fe/core/styles/typography.dart';

class RecycleRushOnboardingWidgetFourth extends StatelessWidget {
  const RecycleRushOnboardingWidgetFourth({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/xp-image-onboard.png',
          ),
          const SizedBox(height: 51),
          Text(
            "XP",
            style: RecycleRushHeadingTypography.megaLarge(
                color: AppColor.textPrimary),
          ),
          const SizedBox(height: 22),
          SizedBox(
            width: 287,
            child: Text(
              "Earn XP from taking pictures with TrashGo to open more Quests",
              style: RecycleRushParagraph.medium(color: AppColor.textPrimary),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
