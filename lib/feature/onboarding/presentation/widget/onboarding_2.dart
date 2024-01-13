import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecycleRushOnboardingWidgetSecond extends StatelessWidget {
  const RecycleRushOnboardingWidgetSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 66, left: 29),
          child: Image.asset(
            'assets/images/globy-onboard-2.png',
            width: 280,
          ),
        ),
        const SizedBox(height: 51),
        Text(
          "TrashGo",
          style: GoogleFonts.spaceGrotesk(
            fontSize: 64,
            fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 22),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Text(
            "Berpetualang untuk mengumpulkan gambar sampah di lokasi tertentu",
            style: GoogleFonts.plusJakartaSans(
              fontSize: 16,
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
