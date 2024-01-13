import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecycleRushOnboardingWidgetFifth extends StatelessWidget {
  const RecycleRushOnboardingWidgetFifth({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/coins-image-onboard.png',
          ),
          const SizedBox(height: 51),
          Text(
            "Coin",
            style: GoogleFonts.spaceGrotesk(
              fontSize: 64,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 22),
          Text(
            "Saldo e-wallet yang dapat ditukar dengan uang",
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
