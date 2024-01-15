import 'package:flutter/material.dart';
import 'package:recycle_rush_fe/core/styles/app_color.dart';
import 'package:recycle_rush_fe/core/styles/typography.dart';

class RecycleRushElevatedButton extends StatelessWidget {
  const RecycleRushElevatedButton({
    super.key,
    required this.btnHeight,
    required this.btnColor,
    required this.btnText,
  });

  final double btnHeight;
  final Color btnColor;
  final String btnText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: btnHeight,
      width: double.infinity,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: btnColor,
          blurRadius: 16,
          offset: Offset(0, 6),
          spreadRadius: -4,
        ),
      ]),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          onPrimary: btnColor,
          backgroundColor: btnColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          side: BorderSide(
            color: btnColor,
            width: 3,
          ),
        ),
        child: Text(
          btnText,
          style:
              RecycleRushHeadingTypography.xxSmall(color: AppColor.textPrimary),
        ),
        onPressed: () {},
      ),
    );
  }
}
