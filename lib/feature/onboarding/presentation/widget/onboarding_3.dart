import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecycleRushOnboardingWidgetThird extends StatelessWidget {
  const RecycleRushOnboardingWidgetThird({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Quest",
            style: GoogleFonts.spaceGrotesk(
              fontSize: 64,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 22),
          Text(
            "Lorem ipsum dolor sit amet consectetur. Tortor mi elementum eu viverra dignissim sagittis sollicitudin. Vivamus tortor felis.",
            style: GoogleFonts.plusJakartaSans(
              fontSize: 16,
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 22),
          Image.asset(
            'assets/images/eco-quest-banner.png',
          ),
          const SizedBox(height: 16),
          Image.asset(
            'assets/images/clan-quest-banner.png',
          )
        ],
      ),
    );
  }
}
