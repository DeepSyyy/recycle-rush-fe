import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:recycle_rush_fe/core/styles/app_color.dart';
import 'package:recycle_rush_fe/core/styles/typography.dart';

class RecycleRushWidgetCoins extends StatelessWidget {
  const RecycleRushWidgetCoins({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RecycleRushColor.green,
      body: SafeArea(
        bottom: false,
        child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
                  SliverAppBar(
                    backgroundColor: RecycleRushColor.green,
                    bottom: PreferredSize(
                      preferredSize: const Size.fromHeight(135),
                      child: Container(),
                    ),
                    flexibleSpace: FlexibleSpaceBar(
                      background: _appBar(context),
                    ),
                  ),
                ],
            body: _content()),
      ),
    );
  }

  Container _appBar(context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 23),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {},
                child: Icon(
                  Iconsax.arrow_left_2,
                  color: AppColor.textPrimary,
                  size: 24,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Coins",
                      style: RecycleRushHeadingTypography.xLarge(),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/transfer');
                        },
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            primary: AppColor.textPrimary,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Transfer",
                              style: RecycleRushLabelTypography.small(
                                  color: AppColor.textSecondary),
                            ),
                            const SizedBox(width: 4),
                            const Icon(
                              IconsaxBold.arrow_right,
                              color: AppColor.textSecondary,
                              size: 16,
                            )
                          ],
                        ))
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 16),
          RecycleRushContainerCoinsInfo(),
        ],
      ),
    );
  }

  Container _content() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      width: double.infinity,
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
        color: AppColor.textSecondary,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
      ),
      child: ListView(
        clipBehavior: Clip.none,
        children: [
          // const RecycleRushContainerCoinsInfo(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "This Month",
                style: RecycleRushSubHeadingTypography.large(),
              ),
              Text(
                "Updated today, 12:30 PM",
                style: RecycleRushLabelTypography.small(),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const RecycleRushCardHistory(
            isOut: false,
            title: "Eco Quest - Can Collector",
            date: "Today, 12:30 PM",
            amount: "1.000",
          ),
          const SizedBox(height: 16),
          const RecycleRushCardHistory(
            isOut: true,
            title: "Dana",
            date: "Today, 12:30 PM",
            amount: "1.000",
          ),
          const SizedBox(height: 16),
          const RecycleRushCardHistory(
            isOut: false,
            title: "Eco Quest - Can Collector",
            date: "Today, 12:30 PM",
            amount: "1.000",
          ),
        ],
      ),
    );
  }
}

class RecycleRushCardHistory extends StatelessWidget {
  const RecycleRushCardHistory({
    super.key,
    required this.isOut,
    required this.title,
    required this.date,
    required this.amount,
  });
  final bool isOut;
  final String title;
  final String date;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xfff4f6f6),
            ),
            child: isOut
                ? SvgPicture.asset(
                    "assets/svg/${title.toLowerCase()}-icon.svg",
                    width: 20,
                    height: 20,
                  )
                : Icon(
                    IconsaxBold.trash,
                    color: AppColor.textPrimary.withOpacity(0.6),
                  )),
        const SizedBox(width: 12),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: RecycleRushLabelTypography.medium(),
                  ),
                  Text(
                    date,
                    style: RecycleRushLabelTypography.small(),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    isOut ? "- $amount" : "+ $amount",
                    style: RecycleRushSubHeadingTypography.large(
                        color: isOut
                            ? AppColor.textPrimary
                            : RecycleRushColor.green.shade500),
                  ),
                  Text(
                    isOut ? "Outgoing" : "Quest",
                    style: RecycleRushLabelTypography.xSmall(),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

class RecycleRushContainerCoinsInfo extends StatelessWidget {
  const RecycleRushContainerCoinsInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
      ],
    );
  }
}
