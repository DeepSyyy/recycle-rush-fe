import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recycle_rush_fe/core/styles/app_color.dart';
import 'package:recycle_rush_fe/core/styles/typography.dart';
import 'package:recycle_rush_fe/feature/auth/presentation/widget/recycle_rush_tf.dart';

class RecycleRushSignInWidget extends StatefulWidget {
  const RecycleRushSignInWidget({super.key});

  @override
  State<RecycleRushSignInWidget> createState() =>
      _RecycleRushSignInWidgetState();
}

class _RecycleRushSignInWidgetState extends State<RecycleRushSignInWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(
                'assets/svg/globy-icon-light.svg',
                height: 80,
              ),
              const SizedBox(height: 16),
              Text(
                "Sign In",
                style: RecycleRushHeadingTypography.medium(),
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
                style: RecycleRushParagraph.medium(),
              ),
              const SizedBox(height: 20),
              const RecycleRushTfAuth(),
              const SizedBox(height: 16),
              const RecycleRushTfAuth(),
              const SizedBox(height: 16),
              Text(
                "Forgot Password?",
                style: RecycleRushSubHeadingTypography.small(
                    color: RecycleRushColor.gren500),
              )
            ],
          ),
        ),
      ],
    );
  }
}
