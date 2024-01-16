import 'package:flutter/material.dart';
import 'package:recycle_rush_fe/feature/auth/presentation/widget/sign_in_widget.dart';

class RecycleRushViewAuth extends StatelessWidget {
  static const routeName = '/auth';
  const RecycleRushViewAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return const RecycleRushSignInWidget();
  }
}
