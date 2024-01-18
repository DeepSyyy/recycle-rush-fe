import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:recycle_rush_fe/core/styles/app_color.dart';
import 'package:recycle_rush_fe/core/styles/typography.dart';

class RecycleRushCardQuest extends StatelessWidget {
  final String title;
  final String description;
  final int coins;
  final Color foregroundColor;
  final Color backgroundColor;

  RecycleRushCardQuest({
    super.key,
    required this.title,
    required this.description,
    required this.coins,
    required String colorMode,
  })  : foregroundColor = _parseForegroundColor(colorMode),
        backgroundColor = _parseBackgoundColor(colorMode);

  static Color _parseForegroundColor(String colorMode) {
    switch (colorMode) {
      // dark, blue, yellow => white
      case "dark":
      case "blue":
      case "yellow":
        return Colors.white;
      // light, green => black
      case "light":
      case "green":
        return Colors.black;
      default:
        return Colors.black;
    }
  }

  static Color _parseBackgoundColor(String colorMode) {
    switch (colorMode) {
      case "dark":
        return AppColor.textPrimary;
      case "light":
        return AppColor.textFieldBorder;
      case "blue":
        return RecycleRushColor.blue;
      case "yellow":
        return RecycleRushColor.yellow;
      case "green":
        return RecycleRushColor.green;
      default:
        return AppColor.textFieldBorder;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          "/quest-detail",
          arguments: {
            "title": title,
            "description": description,
            "coins": coins,
            "foregroundColor": foregroundColor,
            "backgroundColor": backgroundColor,
          },
        );
      },
      child: Container(
        width: 120,
        height: 165,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: backgroundColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              description,
              overflow: TextOverflow.clip,
              style: RecycleRushSubHeadingTypography.large(
                color: foregroundColor,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      IconsaxBold.buy_crypto,
                      color: foregroundColor,
                      size: 16,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      "$coins",
                      style: RecycleRushParagraph.small(
                        color: foregroundColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  title,
                  style: RecycleRushLabelTypography.xSmall(
                    color: foregroundColor.withOpacity(0.6),
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
