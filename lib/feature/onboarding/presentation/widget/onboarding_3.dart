import 'package:flutter/material.dart';
import 'package:recycle_rush_fe/core/styles/app_color.dart';
import 'package:recycle_rush_fe/core/styles/typography.dart';

class RecycleRushOnboardingWidgetThird extends StatelessWidget {
  const RecycleRushOnboardingWidgetThird({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Quest",
            style: RecycleRushHeadingTypography.megaLarge(
                color: AppColor.textPrimary),
          ),
          const SizedBox(height: 22),
          Text(
            "Lorem ipsum dolor sit amet consectetur. Tortor mi elementum eu viverra dignissim sagittis sollicitudin. Vivamus tortor felis.",
            style: RecycleRushParagraph.medium(color: AppColor.textPrimary),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 22),
          Image.asset(
            'assets/images/eco-quest-banner.png',
          ),
          const SizedBox(height: 16),
          Image.asset(
            'assets/images/clan-quest-banner.png',
          )
        ],
      ),
    );
  }
}
