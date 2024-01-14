import 'package:flutter/material.dart';
import 'package:recycle_rush_fe/core/config/app_color.dart';
import 'package:google_fonts/google_fonts.dart';

class RecycleRushElevatedButtonAuth extends StatelessWidget {
  const RecycleRushElevatedButtonAuth({
    super.key,
    required this.isLogin,
  });

  final bool isLogin;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 53,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: isLogin ? AppColor.primary : AppColor.secondary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          side: BorderSide(
            color: isLogin ? AppColor.primary : Color(0xffEFF2F0),
            width: 3,
          ),
        ),
        child: Text(
          isLogin ? "Login" : "Register",
          style: GoogleFonts.spaceGrotesk(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: AppColor.textPrimary),
        ),
        onPressed: () {},
      ),
    );
  }
}
