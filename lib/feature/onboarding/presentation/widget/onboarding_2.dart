import 'package:flutter/material.dart';
import 'package:recycle_rush_fe/core/styles/app_color.dart';
import 'package:recycle_rush_fe/core/styles/typography.dart';

class RecycleRushOnboardingWidgetSecond extends StatelessWidget {
  const RecycleRushOnboardingWidgetSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 66, left: 29),
          child: Image.asset(
            'assets/images/globy-onboard-2.png',
            width: 280,
          ),
        ),
        const SizedBox(height: 51),
        Text(
          "TrashGo",
          style: RecycleRushHeadingTypography.megaLarge(
              color: AppColor.textPrimary),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 22),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Text(
            "Berpetualang untuk mengumpulkan gambar sampah di lokasi tertentu",
            style: RecycleRushParagraph.medium(color: AppColor.textPrimary),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
