import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
                    automaticallyImplyLeading: false,
                    backgroundColor: RecycleRushColor.green,
                    bottom: PreferredSize(
                      preferredSize: const Size.fromHeight(0),
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
      child: Stack(
        alignment: Alignment.center,
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Iconsax.arrow_left_2,
                  color: AppColor.textPrimary,
                  size: 24,
                ),
              ),
            ],
          ),
          Text(
            "Transfer",
            style: RecycleRushHeadingTypography.xSmall(),
          )
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
          const SizedBox(height: 16),
          RecycleRushCardTransfer(),
          const SizedBox(height: 16),
          RecycleRushCardTransfer(),
          const SizedBox(height: 16),
          RecycleRushCardTransfer(),
          const SizedBox(height: 16),
          RecycleRushCardTransfer(),
        ],
      ),
    );
  }
}

class RecycleRushCardTransfer extends StatelessWidget {
  const RecycleRushCardTransfer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(0xfff4f6f6),
      ),
      child: Row(
        children: [
          SvgPicture.asset("assets/svg/dana-icon.svg"),
          const SizedBox(width: 8),
          Text(
            "Dana",
            style: RecycleRushSubHeadingTypography.large(),
          ),
        ],
      ),
    );
  }
}
