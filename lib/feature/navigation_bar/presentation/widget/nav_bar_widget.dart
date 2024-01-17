import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:recycle_rush_fe/core/styles/typography.dart';

class RecycleRushWidgetNavbar extends StatefulWidget {
  const RecycleRushWidgetNavbar({super.key});

  @override
  State<RecycleRushWidgetNavbar> createState() =>
      _RecycleRushWidgetNavbarState();
}

class _RecycleRushWidgetNavbarState extends State<RecycleRushWidgetNavbar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
    ),
    Text(
      'Quest',
    ),
    Text(
      'TrashGo',
    ),
    Text(
      'Clan',
    ),
    Text(
      'Profile',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(42),
          color: Colors.black,
        ),
        child: GNav(
          tabBackgroundColor: const Color(0xff363636),
          activeColor: Colors.white,
          duration: const Duration(milliseconds: 1000),
          gap: 8,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          tabs: [
            buttonItem(IconsaxBold.home_1, "Home"),
            buttonItem(IconsaxBold.trash, "Quest"),
            buttonItem(IconsaxBold.scanning, "TrashGO"),
            buttonItem(IconsaxBold.people, "Clan"),
            buttonItem(IconsaxBold.frame, "Profile")
          ],
          selectedIndex: _selectedIndex,
          onTabChange: (index) {
            setState(
              () {
                _selectedIndex = index;
              },
            );
          },
        ),
      ),
    );
  }

  GButton buttonItem(IconData icon, String text) {
    return GButton(
      icon: icon,
      text: text,
      iconColor: const Color(0xffA6A6A6),
      textStyle: RecycleRushLabelTypography.small(
        color: Colors.white,
      ),
    );
  }
}
