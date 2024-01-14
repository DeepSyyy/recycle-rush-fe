import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recycle_rush_fe/core/utils/button_auth.dart';

class RecycleRushOnboardingWidgetsixth extends StatelessWidget {
  const RecycleRushOnboardingWidgetsixth({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/globy-onboard-final.png"),
          const SizedBox(height: 51),
          Text(
            "Ready?",
            style: GoogleFonts.spaceGrotesk(
              fontSize: 64,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 64),
          const RecycleRushElevatedButtonAuth(
            isLogin: true,
          ),
          const SizedBox(height: 8),
          const RecycleRushElevatedButtonAuth(
            isLogin: false,
          )
        ],
      ),
    );
  }
}
