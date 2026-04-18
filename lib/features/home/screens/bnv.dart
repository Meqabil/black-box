
import 'package:black_box/features/auth/domain/entities/owner_entity.dart';
import 'package:black_box/features/drivers/presentation/screens/drivers_list_screen.dart';
import 'package:black_box/features/home/notification.dart';
import 'package:black_box/features/profile/screens/profile_page.dart';
import 'package:flutter/material.dart';
import '../../cars/presentation/screens/cars_list_screen.dart';
import 'home.dart';

class BNVScreen extends StatefulWidget {
  const BNVScreen({super.key,required this.owner});
  final OwnerEntity owner;
  @override
  State<BNVScreen> createState() => _BNVScreenState();
}

class _BNVScreenState extends State<BNVScreen> {
  int _selectedIndex = 0;
  List<Widget> get _pages => [
    HomeContent(
      onNotificationTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => NotificationScreen()));
      },
    ),
    CarsListScreen(
      onNotificationTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => NotificationScreen()));
      },
    ),
    DriversListScreen(
      onNotificationTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => NotificationScreen()));
      },
    ),
    ProfilePage(
      onNotificationTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => NotificationScreen()));
      },
      owner: widget.owner,
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
                Icons.people,
                size: 30,
                color: _selectedIndex == 2 ? Colors.black : Colors.white,
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
    );
  }
}