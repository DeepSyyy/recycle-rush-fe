import 'package:flutter/material.dart';
import 'package:recycle_rush_fe/core/styles/app_color.dart';
import 'package:recycle_rush_fe/core/styles/typography.dart';
import 'package:recycle_rush_fe/feature/quests/presentation/widget/card_quest_widget.dart';

class RecycleRushCardMyQuest extends StatelessWidget {
  final String title;
  final String description;
  final int coins;
  final double completed;
  final double target;
  final String colorMode;

  const RecycleRushCardMyQuest({
    super.key,
    required this.title,
    required this.description,
    required this.coins,
    required this.completed,
    required this.target,
    required this.colorMode,
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
          RecycleRushCardQuest(
            title: title,
            description: description,
            coins: coins,
            colorMode: colorMode,
          ),
          _progressIndicator(
            numerator: completed,
            denominator: target,
          ),
        ],
      ),
    );
  }

  Padding _progressIndicator({
    required double numerator,
    required double denominator,
  }) {
    double decimal = numerator / denominator;
    String percentage = "${(decimal * 100).toInt()}";

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 2,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "${percentage}%",
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
              value: decimal,
              color: AppColor.textPrimary,
              backgroundColor: Colors.grey,
              borderRadius: BorderRadius.circular(2),
            ),
          )
        ],
      ),
    );
  }
}
