import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecycleRushOnboardingWidgetFourth extends StatelessWidget {
  const RecycleRushOnboardingWidgetFourth({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/xp-image-onboard.png',
          ),
          const SizedBox(height: 51),
          Text(
            "XP",
            style: GoogleFonts.spaceGrotesk(
              fontSize: 64,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 22),
          Text(
            "Meningkatkan level untuk mengadirkan Quest baru",
            style: GoogleFonts.plusJakartaSans(
              fontSize: 16,
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
