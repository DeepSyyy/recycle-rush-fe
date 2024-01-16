import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:recycle_rush_fe/core/styles/app_color.dart';
import 'package:recycle_rush_fe/core/styles/typography.dart';

class RecycleRushWidgetHome extends StatelessWidget {
  static const routeName = '/home';
  const RecycleRushWidgetHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: RecycleRushColor.gren400,
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 23),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello, Galih Akbar!",
                    style: RecycleRushParagraph.small(),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(
                        Iconsax.location5,
                        size: 24,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        "Jakarta, Indonesia",
                        style: RecycleRushHeadingTypography.small(),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Trash Go",
                              style: RecycleRushLabelTypography.xSmall(
                                color: AppColor.textPrimary.withOpacity(0.6),
                              ),
                            ),
                            Text(
                              "348",
                              style: RecycleRushHeadingTypography.large(),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "Quest",
                              style: RecycleRushLabelTypography.xSmall(
                                color: AppColor.textPrimary.withOpacity(0.6),
                              ),
                            ),
                            Text(
                              "89",
                              style: RecycleRushHeadingTypography.large(),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "Level",
                              style: RecycleRushLabelTypography.xSmall(
                                color: AppColor.textPrimary.withOpacity(0.6),
                              ),
                            ),
                            Text(
                              "17",
                              style: RecycleRushHeadingTypography.large(),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "XP",
                              style: RecycleRushLabelTypography.xSmall(
                                color: AppColor.textPrimary.withOpacity(0.6),
                              ),
                            ),
                            Text(
                              "50k",
                              style: RecycleRushHeadingTypography.large(),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: AppColor.textSecondary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xff202020),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Coins",
                          style: RecycleRushLabelTypography.small(
                            color: AppColor.textSecondary,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "1.642.134,39",
                              style: RecycleRushHeadingTypography.large(
                                  color: AppColor.textSecondary),
                            ),
                            const Icon(
                              Iconsax.eye4,
                              color: AppColor.textSecondary,
                              size: 24,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 14),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: ShapeDecoration(
                      color: const Color(0xFFFAFAFA),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 2, color: Color(0xFFF4F4F6)),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "TrashGo",
                          style: RecycleRushHeadingTypography.small(
                            color: AppColor.textPrimary,
                          ),
                        ),
                        Text(
                          "Take trash photo to unlock Quests",
                          style: RecycleRushLabelTypography.medium(
                              color: AppColor.textPrimary),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
