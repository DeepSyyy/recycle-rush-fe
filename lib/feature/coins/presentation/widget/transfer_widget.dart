import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:recycle_rush_fe/core/styles/app_color.dart';
import 'package:recycle_rush_fe/core/styles/typography.dart';
import 'package:recycle_rush_fe/feature/coins/presentation/widget/coins_widget.dart';

class RecyleRushWidgetTransfer extends StatelessWidget {
  static const routeName = '/transfer';
  const RecyleRushWidgetTransfer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RecycleRushColor.green,
      body: SafeArea(
        bottom: false,
        child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
                  SliverAppBar(
                    leading: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Iconsax.arrow_left_2,
                        color: AppColor.textPrimary,
                        size: 24,
                      ),
                    ),
                    backgroundColor: RecycleRushColor.green,
                    bottom: PreferredSize(
                      preferredSize: const Size.fromHeight(135),
                      child: Container(),
                    ),
                    flexibleSpace: FlexibleSpaceBar(
                      background: _appBar(),
                    ),
                  ),
                ],
            body: _content()),
      ),
    );
  }

  Container _appBar() {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 23),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {},
                child: const Icon(
                  Iconsax.arrow_left_2,
                  color: AppColor.textPrimary,
                  size: 24,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Transfer",
                    style: RecycleRushHeadingTypography.xSmall(),
                  ),
                ],
              )
            ],
          ),
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
