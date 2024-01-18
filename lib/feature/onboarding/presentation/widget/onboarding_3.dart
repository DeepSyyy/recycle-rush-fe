import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:recycle_rush_fe/core/styles/app_color.dart';
import 'package:recycle_rush_fe/core/styles/typography.dart';

class RecycleRushOnboardingWidgetThird extends StatelessWidget {
  const RecycleRushOnboardingWidgetThird({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 64),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
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
            SizedBox(
              width: 287,
              child: Text("Collect items as instructed and earn your coins",
                  style:
                      RecycleRushParagraph.medium(color: AppColor.textPrimary),
                  textAlign: TextAlign.center),
            ),
            const SizedBox(height: 22),
            RecycleRushCardOnboard(
              title: "Eco Quest",
              text:
                  "Individual daily challenge to collect trash that can be exchanged for Coins with Vending Machine",
              icon: IconsaxBold.trash,
              bgColor: RecycleRushColor.blue.shade500,
            ),
            const SizedBox(height: 16),
            RecycleRushCardOnboard(
              title: "Clan Quest",
              text:
                  "Completing team missions with your friends to collect trash that can  be exchanged for coins",
              icon: IconsaxBold.people,
              bgColor: RecycleRushColor.purple.shade500,
            ),
          ],
        ),
      ),
    );
  }
}

class RecycleRushCardOnboard extends StatelessWidget {
  const RecycleRushCardOnboard({
    super.key,
    required this.title,
    required this.icon,
    required this.text,
    required this.bgColor,
  });

  final String title;
  final String text;
  final IconData icon;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 32),
          padding: const EdgeInsets.all(16),
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16), color: bgColor),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: RecycleRushSubHeadingTypography.large(
                    color: AppColor.textSecondary),
              ),
              const SizedBox(height: 12),
              Text(
                text,
                style:
                    RecycleRushParagraph.medium(color: AppColor.textSecondary),
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: AppColor.textPrimary),
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 32,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
