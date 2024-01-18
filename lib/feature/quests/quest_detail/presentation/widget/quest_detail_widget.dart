import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:recycle_rush_fe/core/styles/app_color.dart';
import 'package:recycle_rush_fe/core/styles/typography.dart';

class RecycleRushWidgetQuestDetail extends StatelessWidget {
  final String title;
  final String description;
  final int coins;
  final Color foregroundColor;
  final Color backgroundColor;

  const RecycleRushWidgetQuestDetail({
    super.key,
    required this.title,
    required this.description,
    required this.coins,
    required this.foregroundColor,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: _content(),
      ),
    );
  }

  Container _content() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 48,
          ),
          Text(
            description,
            style: RecycleRushSubHeadingTypography.mega(
              color: foregroundColor,
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Level",
                      style: RecycleRushLabelTypography.xSmall(
                        color: foregroundColor,
                      ),
                    ),
                    Text(
                      "Easy",
                      style: RecycleRushHeadingTypography.small(
                        color: foregroundColor,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 32,
                          height: 4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: foregroundColor,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: 32,
                          height: 4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: foregroundColor.withOpacity(0.6),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: 32,
                          height: 4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: foregroundColor.withOpacity(0.6),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Container(
                constraints: const BoxConstraints(
                  maxWidth: 100,
                ),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "XP",
                      style: RecycleRushLabelTypography.xSmall(
                        color: foregroundColor,
                      ),
                    ),
                    Text(
                      "203",
                      style: RecycleRushHeadingTypography.small(
                        color: foregroundColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
