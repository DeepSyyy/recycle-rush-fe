import 'package:flutter/material.dart';
import 'package:recycle_rush_fe/feature/auth/presentation/widget/sign_in_widget.dart';
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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: RecycleRushSignInWidget(),
      ),
    );
  }
}
