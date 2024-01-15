import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recycle_rush_fe/core/styles/app_color.dart';
import 'package:recycle_rush_fe/core/styles/typography.dart';
import 'package:recycle_rush_fe/core/utils/button.dart';
import 'package:recycle_rush_fe/feature/auth/presentation/widget/recycle_rush_tf_general.dart';

class RecycleRushSignUpWidget extends StatefulWidget {
  static const routeName = '/sign-up';
  const RecycleRushSignUpWidget({super.key});

  @override
  State<RecycleRushSignUpWidget> createState() =>
      _RecycleRushSignUpWidgetState();
}

class _RecycleRushSignUpWidgetState extends State<RecycleRushSignUpWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 23),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    'assets/svg/globy-icon-light.svg',
                    height: 80,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "Sign Up",
                    style: RecycleRushHeadingTypography.medium(),
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
                    style: RecycleRushParagraph.medium(),
                  ),
                  const SizedBox(height: 20),
                  const RecycleRushTfAuthGeneral(),
                  const SizedBox(height: 16),
                  const RecycleRushTfPassword(textLabel: "Password"),
                  const SizedBox(height: 16),
                  const RecycleRushTfPassword(textLabel: "Confirm Password"),
                  const SizedBox(height: 40),
                  const RecycleRushElevatedButton(
                    btnColor: RecycleRushColor.gren400,
                    btnHeight: 48,
                    btnText: "Sign Up",
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 1,
                          color: AppColor.textPrimary.withOpacity(0.1),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Text(
                        "or",
                        style: RecycleRushLabelTypography.small(
                          color: AppColor.textPrimary.withOpacity(0.6),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Divider(
                          thickness: 1,
                          color: AppColor.textPrimary.withOpacity(0.1),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      onPrimary: AppColor.textPrimary,
                      backgroundColor: Color(0xffffffff),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      side: BorderSide(
                        color: AppColor.textPrimary.withOpacity(0.1),
                        width: 1,
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/google-icon.png"),
                        const SizedBox(width: 12),
                        Text(
                          "Countinue with Google",
                          style: RecycleRushHeadingTypography.xxSmall(
                            color: AppColor.textPrimary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: RecycleRushLabelTypography.small(
                      color: AppColor.textPrimary,
                    ),
                  ),
                  const SizedBox(width: 8),
                  InkWell(
                    onTap: () =>
                        Navigator.pushReplacementNamed(context, '/sign-in'),
                    child: Text(
                      "Sign In",
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        height: 1.2,
                        letterSpacing: 0,
                        color: RecycleRushColor.gren500,
                        decoration: TextDecoration.underline,
                        decorationColor: RecycleRushColor.gren500,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
