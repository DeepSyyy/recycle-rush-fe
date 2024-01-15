import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:recycle_rush_fe/core/styles/app_color.dart';
import 'package:recycle_rush_fe/core/styles/typography.dart';

class RecycleRushTfAuthGeneral extends StatelessWidget {
  const RecycleRushTfAuthGeneral({
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

class RecycleRushTfPassword extends StatefulWidget {
  const RecycleRushTfPassword({
    super.key,
    required this.textLabel,
  });
  final String textLabel;

  @override
  State<RecycleRushTfPassword> createState() => _RecycleRushTfPasswordState();
}

class _RecycleRushTfPasswordState extends State<RecycleRushTfPassword> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextFormField(
        obscureText: obscureText,
        style: RecycleRushLabelTypography.medium(
            color: AppColor.textPrimary.withOpacity(0.6)),
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          labelText: widget.textLabel,
          labelStyle: RecycleRushLabelTypography.medium(
              color: AppColor.textPrimary.withOpacity(0.6)),
          floatingLabelAlignment: FloatingLabelAlignment.start,
          floatingLabelStyle: RecycleRushLabelTypography.medium(),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                obscureText = !obscureText;
              });
            },
            icon: Icon(
              obscureText ? Iconsax.eye_slash5 : Iconsax.eye4,
              color: AppColor.textPrimary.withOpacity(0.6),
            ),
          ),
          filled: true,
          fillColor: const Color(0xffFAFAFA),
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
