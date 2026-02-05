import 'package:flutter/material.dart';
import 'package:grad_project/hom-e/bnv/car/car_ditail/car_ditail.dart';
import 'package:grad_project/hom-e/bnv/car/car_list.dart';
import 'package:grad_project/hom-e/bnv/home.dart';
import 'package:grad_project/hom-e/bnv/profile.dart';
import 'package:grad_project/hom-e/notification.dart';

class BNVScreen extends StatefulWidget {
  const BNVScreen({super.key});

  @override
  State<BNVScreen> createState() => _BNVScreenState();
}

class _BNVScreenState extends State<BNVScreen> {
  int _selectedIndex = 0;
  late final List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      HomeContent(
        onNotificationTap: () => openNotification(context),
      ),
      CarListScreen(
        onBackToHome: () => _onItemTapped(0),
        onNotificationTap: () => openNotification(context),
      ),
      CarDitialScreen(
        onBackToHome: () => _onItemTapped(0),
        onNotificationTap: () => openNotification(context),
      ),
      const ProfileScreen(),
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void openNotification(BuildContext context) {
    Navigator.of(context, rootNavigator: true).push(
      MaterialPageRoute(
        builder: (context) => NotificationScreen(
          onBackToHome: () {
            Navigator.pop(context);
          },
          onnotificationTap: () {},
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          IndexedStack(index: _selectedIndex, children: _pages),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
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
                    onTap: () => _onItemTapped(3), 
                    child: Icon(
                      Icons.person_outline,
                      size: 30,
                      color: _selectedIndex == 3 ? Colors.black : Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
