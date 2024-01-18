import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:recycle_rush_fe/core/styles/app_color.dart';
import 'package:recycle_rush_fe/core/styles/typography.dart';

class RecycleRushWidgetHome extends StatelessWidget {
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
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: AppColor.textSecondary,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                ),
                child: ListView(
                  children: [
                    const RecycleRushContainerCoinsInfo(),
                    const SizedBox(height: 22),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "My Quest",
                          style: RecycleRushSubHeadingTypography.xxLarge(),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Row(
                            children: [
                              Text(
                                "Show All",
                                style: RecycleRushLabelTypography.small(),
                              ),
                              const SizedBox(width: 4),
                              const Icon(
                                Iconsax.arrow_right_34,
                                size: 20,
                                color: AppColor.textPrimary,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 16),
                    const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RecycleRushCardQuest(),
                          SizedBox(width: 16),
                          RecycleRushCardQuest(),
                          SizedBox(width: 16),
                          RecycleRushCardQuest(),
                          SizedBox(width: 16),
                          RecycleRushCardQuest(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RecycleRushCardQuest extends StatelessWidget {
  const RecycleRushCardQuest({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xffF4F4F6),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(),
              color: Colors.black,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Gather 10 pieces of aluminum cans",
                  overflow: TextOverflow.clip,
                  style: RecycleRushSubHeadingTypography.large(
                      color: Colors.white),
                ),
                const SizedBox(height: 21),
                Row(
                  children: [
                    const Icon(
                      IconsaxBold.buy_crypto,
                      color: Colors.white,
                    ),
                    Text(
                      "10.000",
                      style: RecycleRushParagraph.small(color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  "Cans collector",
                  style: RecycleRushLabelTypography.xSmall(
                      color: AppColor.textSecondary.withOpacity(0.8)),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 2,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "70%",
                  style: RecycleRushLabelTypography.small(),
                ),
                Container(
                  width: 65,
                  height: 4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppColor.textPrimary,
                  ),
                  child: LinearProgressIndicator(
                    value: 0.7,
                    color: AppColor.textPrimary,
                    backgroundColor: Colors.grey,
                    borderRadius: BorderRadius.circular(2),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class RecycleRushContainerCoinsInfo extends StatelessWidget {
  const RecycleRushContainerCoinsInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xffF4F4F6),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Coins",
                      style: RecycleRushLabelTypography.small(
                        color: AppColor.textSecondary,
                      ),
                    ),
                    InkWell(
                        onTap: () {},
                        child: SvgPicture.asset(
                            "assets/svg/icon-arrow-northwest.svg"))
                  ],
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: InkWell(
              onTap: () {},
              child: Row(
                children: [
                  Text(
                    "Transfer your coins to",
                    style: RecycleRushLabelTypography.small(),
                  ),
                  const SizedBox(width: 4),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      IconsaxBold.arrow_right,
                      size: 20,
                      color: AppColor.textPrimary,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
