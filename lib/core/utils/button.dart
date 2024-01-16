import 'package:flutter/material.dart';
import 'package:recycle_rush_fe/core/styles/app_color.dart';
import 'package:recycle_rush_fe/core/styles/typography.dart';

class RecycleRushElevatedButton extends StatelessWidget {
  const RecycleRushElevatedButton({
    Key? key,
    required this.btnHeight,
    required this.btnColor,
    required this.btnText,
    required this.isEnabled,
    this.routeName,
  }) : super(key: key);

  final double btnHeight;
  final Color btnColor;
  final String btnText;
  final String? routeName;
  final bool isEnabled;

  @override
  Widget build(BuildContext context) {
    BoxDecoration decoration = const BoxDecoration();

    if (isEnabled) {
      decoration = BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: btnColor,
            blurRadius: 16,
            offset: const Offset(0, 6),
            spreadRadius: -4,
          )
        ],
      );
    }
    return Container(
      height: btnHeight,
      width: double.infinity,
      decoration: decoration,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 0,
            onPrimary:
                isEnabled ? btnColor : AppColor.textPrimary.withOpacity(0.1),
            backgroundColor:
                isEnabled ? btnColor : AppColor.textPrimary.withOpacity(0.1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            side: isEnabled
                ? BorderSide(
                    color: btnColor,
                    width: 3,
                  )
                : BorderSide.none),
        child: Text(
          btnText,
          style: RecycleRushHeadingTypography.xxSmall(
              color: isEnabled
                  ? AppColor.textPrimary
                  : AppColor.textPrimary.withOpacity(0.1)),
        ),
        onPressed: () {
          if (routeName != null) {
            Navigator.pushNamed(context, routeName!);
          }
        },
      ),
    );
  }
}
