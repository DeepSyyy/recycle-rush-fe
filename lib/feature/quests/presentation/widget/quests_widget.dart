import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:recycle_rush_fe/core/styles/app_color.dart';
import 'package:recycle_rush_fe/core/styles/typography.dart';
import 'package:recycle_rush_fe/feature/quests/presentation/widget/card_my_quest_widget.dart';
import 'package:recycle_rush_fe/feature/quests/presentation/widget/card_quest_widget.dart';

class RecycleRushQuestsWidget extends StatelessWidget {
  const RecycleRushQuestsWidget({super.key});

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
              flexibleSpace: _appBar(),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(16),
                child: Container(
                  color: RecycleRushColor.green,
                  height: 0,
                ),
              ),
            ),
          ],
          body: _content(),
          // body: Text("Quests"),
        ),
      ),
    );
  }

  Container _appBar() {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.all(16),
      child: Text(
        "Quests",
        style: RecycleRushHeadingTypography.xLarge(),
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
          Container(
            decoration: BoxDecoration(
              color: AppColor.textPrimary,
              borderRadius: BorderRadius.circular(12),
            ),
            height: 150,
            clipBehavior: Clip.antiAlias,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        constraints: const BoxConstraints(
                          maxWidth: 180,
                        ),
                        child: Text(
                          "Find Nearest Recycle Rush Fending Machine",
                          style: RecycleRushHeadingTypography.xSmall(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Open map",
                            style: RecycleRushLabelTypography.xSmall(
                              color: Colors.white.withOpacity(.6),
                            ),
                          ),
                          const SizedBox(width: 4),
                          Icon(
                            Iconsax.arrow_right_34,
                            size: 16,
                            color: Colors.white.withOpacity(.6),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SvgPicture.asset("assets/svg/navigation-radar.svg"),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "My Quests",
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
            clipBehavior: Clip.none,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RecycleRushCardMyQuest(
                  description: "Gather 10 pieces of aluminum cans",
                  title: "Cans collector",
                  coins: 10000,
                  completed: 5,
                  target: 10,
                  colorMode: "dark",
                ),
                SizedBox(width: 8),
                RecycleRushCardMyQuest(
                  description: "Collect 10 pieces of plastic bags",
                  title: "Plastic Paradise",
                  coins: 1000,
                  completed: 5,
                  target: 10,
                  colorMode: "blue",
                ),
                SizedBox(width: 8),
                RecycleRushCardMyQuest(
                  description: "Pick up  30 cigarette butts",
                  title: "Cigarette Cleanup",
                  coins: 3000,
                  completed: 8,
                  target: 30,
                  colorMode: "yellow",
                ),
                SizedBox(width: 8),
                RecycleRushCardMyQuest(
                  description: "Collect 20  paper or cardboard",
                  title: "Paper Patrol",
                  coins: 10000,
                  completed: 3,
                  target: 10,
                  colorMode: "green",
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Eco Quests",
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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            clipBehavior: Clip.none,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RecycleRushCardQuest(
                  description: "Gather 10 pieces of aluminum cans",
                  title: "Cans collector",
                  coins: 10000,
                  colorMode: "dark",
                ),
                const SizedBox(width: 8),
                RecycleRushCardQuest(
                  description: "Collect 10 pieces of plastic bags",
                  title: "Plastic Paradise",
                  coins: 1000,
                  colorMode: "blue",
                ),
                const SizedBox(width: 8),
                RecycleRushCardQuest(
                  description: "Pick up  30 cigarette butts",
                  title: "Cigarette Cleanup",
                  coins: 3000,
                  colorMode: "yellow",
                ),
                const SizedBox(width: 8),
                RecycleRushCardQuest(
                  description: "Collect 20  paper or cardboard",
                  title: "Paper Patrol",
                  coins: 10000,
                  colorMode: "green",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
