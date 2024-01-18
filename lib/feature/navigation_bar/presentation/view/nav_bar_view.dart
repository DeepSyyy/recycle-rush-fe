import 'package:flutter/material.dart';
import 'package:recycle_rush_fe/feature/navigation_bar/presentation/widget/nav_bar_widget.dart';

class RecycleRushViewNavBar extends StatelessWidget {
  static const routeName = '/nav-bar';
  const RecycleRushViewNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const RecycleRushWidgetNavbar();
  }
}
