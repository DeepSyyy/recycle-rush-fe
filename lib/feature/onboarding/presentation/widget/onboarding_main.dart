import 'package:flutter/material.dart';
import 'package:recycle_rush_fe/core/config/app_color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:recycle_rush_fe/feature/onboarding/presentation/widget/onboarding_1.dart';
import 'package:recycle_rush_fe/feature/onboarding/presentation/widget/onboarding_2.dart';
import 'package:recycle_rush_fe/feature/onboarding/presentation/widget/onboarding_3.dart';
import 'package:recycle_rush_fe/feature/onboarding/presentation/widget/onboarding_4.dart';
import 'package:recycle_rush_fe/feature/onboarding/presentation/widget/onboarding_5.dart';
import 'package:recycle_rush_fe/feature/onboarding/presentation/widget/onboarding_6.dart';

class RecycleRushOnboardingWidgetMain extends StatefulWidget {
  const RecycleRushOnboardingWidgetMain({super.key});

  @override
  State<RecycleRushOnboardingWidgetMain> createState() =>
      _RecycleRushOnboardingWidgetMainState();
}

class _RecycleRushOnboardingWidgetMainState
    extends State<RecycleRushOnboardingWidgetMain> {
  int currentPage = 0;
  final PageController controller = PageController(initialPage: 0);
  List<Widget> pages = [
    const RecycleRushOnboardingWidgetFirst(),
    const RecycleRushOnboardingWidgetSecond(),
    const RecycleRushOnboardingWidgetThird(),
    const RecycleRushOnboardingWidgetFourth(),
    const RecycleRushOnboardingWidgetFifth(),
    const RecycleRushOnboardingWidgetsixth(),
  ];

  void nextPage() {
    if (currentPage < pages.length - 1) {
      currentPage++;
      controller.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void previousPage() {
    if (currentPage > 0) {
      currentPage--;
      controller.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color:
            currentPage == index ? AppColor.primary : AppColor.blackWithOpacity,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: pages.length,
                controller: controller,
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemBuilder: (context, index) => pages[index],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                  mainAxisAlignment:
                      // currentPage != 0 && currentPage != pages.length - 1
                      //     ? MainAxisAlignment.spaceBetween
                      //     : MainAxisAlignment.center,
                      MainAxisAlignment.spaceBetween,
                  children: [
                    if (currentPage != 0)
                      InkWell(
                        onTap: previousPage,
                        borderRadius: BorderRadius.circular(10),
                        splashColor: AppColor.primary.withOpacity(0.5),
                        child: Row(
                          children: [
                            const Icon(
                              Iconsax.arrow_left_2,
                              size: 20,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              "Back",
                              style: GoogleFonts.plusJakartaSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: AppColor.textPrimary),
                            ),
                          ],
                        ),
                      ),
                    if (currentPage == 0) const SizedBox(width: 28),
                    Row(
                      children: List.generate(
                        pages.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    if (currentPage == pages.length - 1)
                      const SizedBox(width: 28),
                    if (currentPage != pages.length - 1)
                      Padding(
                        padding: currentPage == 0
                            ? const EdgeInsets.symmetric(horizontal: 16)
                            : const EdgeInsets.all(0),
                        child: InkWell(
                          onTap: nextPage,
                          borderRadius: BorderRadius.circular(10),
                          splashColor: AppColor.primary.withOpacity(0.5),
                          child: Row(
                            children: [
                              Text(
                                "Next",
                                style: GoogleFonts.plusJakartaSans(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: AppColor.textPrimary),
                              ),
                              const SizedBox(width: 8),
                              const Icon(
                                Iconsax.arrow_right_3,
                                size: 20,
                              )
                            ],
                          ),
                        ),
                      ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
