import 'package:black_box/features/analysis/analysis.dart';
import 'package:black_box/features/profile/screens/profile_page.dart';
import 'package:flutter/material.dart';
import '../notification.dart';
import 'home.dart';

class BNVScreen extends StatefulWidget {
  const BNVScreen({super.key});

  @override
  State<BNVScreen> createState() => _BNVScreenState();
}

class _BNVScreenState extends State<BNVScreen> {
  int _selectedIndex = 0;

  List<Widget> get _pages => [
    HomeContent(
      onNotificationTap: () {
        setState(() {
          _selectedIndex = 3;
        });
      },
    ),
    const Analysis(),
    const ProfilePage(),
    NotificationScreen(
      onBackToHome: () {
        setState(() {
          _selectedIndex = 0; // Home
        });
      },
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        height: 108,
        decoration: BoxDecoration(
          color: const Color(0xFF8B0012),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(80),
            topRight: Radius.circular(80),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () => _onItemTapped(0),
              child: Icon(
                Icons.home_outlined,
                size: 30,
                color: _selectedIndex == 0 ? Colors.black : Colors.white,
              ),
            ),
            GestureDetector(
              onTap: () => _onItemTapped(1),
              child: Icon(
                Icons.layers_outlined,
                size: 30,
                color: _selectedIndex == 1 ? Colors.black : Colors.white,
              ),
            ),
            GestureDetector(
              onTap: () => _onItemTapped(2),
              child: Icon(
                Icons.person_outline,
                size: 30,
                color: _selectedIndex == 2 ? Colors.black : Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}