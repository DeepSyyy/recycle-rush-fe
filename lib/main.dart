import 'package:flutter/material.dart';
import 'package:recycle_rush_fe/feature/auth/presentation/view/auth_view.dart';
import 'package:recycle_rush_fe/feature/auth/presentation/widget/sign_in_widget.dart';
import 'package:recycle_rush_fe/feature/auth/presentation/widget/sign_up_widget.dart';
import 'package:recycle_rush_fe/feature/home/presentation/widget/home_widget.dart';
import 'package:recycle_rush_fe/feature/onboarding/presentation/view/onboarding_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        RecycleRushSignInWidget.routeName: (context) =>
            const RecycleRushSignInWidget(),
        RecycleRushSignUpWidget.routeName: (context) =>
            const RecycleRushSignUpWidget(),
        RecycleRushViewOnboarding.routeName: (context) =>
            const RecycleRushViewOnboarding(),
        RecycleRushViewAuth.routeName: (context) => const RecycleRushViewAuth(),
        RecycleRushWidgetHome.routeName: (context) =>
            const RecycleRushWidgetHome(),
      },
      initialRoute: RecycleRushWidgetHome.routeName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
