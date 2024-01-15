import 'package:flutter/material.dart';
import 'package:recycle_rush_fe/core/styles/app_color.dart';
import 'package:recycle_rush_fe/core/styles/typography.dart';

class RecycleRushTfAuth extends StatelessWidget {
  const RecycleRushTfAuth({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextFormField(
        style: RecycleRushLabelTypography.medium(
            color: AppColor.textPrimary.withOpacity(0.6)),
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          labelText: "Email",
          labelStyle: RecycleRushLabelTypography.medium(
              color: AppColor.textPrimary.withOpacity(0.6)),
          floatingLabelAlignment: FloatingLabelAlignment.start,
          floatingLabelStyle: RecycleRushLabelTypography.medium(),
          filled: true,
          fillColor: Color(0xffFAFAFA),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Color(0xffF4F4F6),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: RecycleRushColor.purple500,
            ),
          ),
        ),
      ),
    );
  }
}
