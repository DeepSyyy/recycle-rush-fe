import 'package:flutter/material.dart';
import 'package:recycle_rush_fe/core/styles/app_color.dart';
import 'package:recycle_rush_fe/core/styles/typography.dart';

class RecycleRushOnboardingWidgetFifth extends StatelessWidget {
  const RecycleRushOnboardingWidgetFifth({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/coins-image-onboard.png',
          ),
          const SizedBox(height: 51),
          Text(
            "Coin",
            style: RecycleRushHeadingTypography.megaLarge(
                color: AppColor.textPrimary),
          ),
          const SizedBox(height: 22),
          SizedBox(
            width: 287,
            child: Text(
              "From quests that you have done, you can exchange your coins to E-Wallet balance anytime!",
              style: RecycleRushParagraph.medium(color: AppColor.textPrimary),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
