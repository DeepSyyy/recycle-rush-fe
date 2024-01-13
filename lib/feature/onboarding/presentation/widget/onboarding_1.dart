import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecycleRushOnboardingWidgetFirst extends StatelessWidget {
  const RecycleRushOnboardingWidgetFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/globy-onboard-1.png',
          ),
          const SizedBox(height: 51),
          Text(
            "Hello",
            style: GoogleFonts.spaceGrotesk(
              fontSize: 64,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
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
        ],
      ),
    );
  }
}
