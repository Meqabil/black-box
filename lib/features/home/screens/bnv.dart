
import 'package:black_box/features/auth/domain/entities/owner_entity.dart';
import 'package:black_box/features/drivers/presentation/screens/drivers_list_screen.dart';
import 'package:black_box/features/home/notification.dart';
import 'package:black_box/features/profile/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/constants/global.dart';
import '../../auth/presentation/bloc/owner/owner_cubit.dart';
import '../../cars/presentation/screens/cars_list_screen.dart';
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
    ProfileScreen(
      onNotificationTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => NotificationScreen()));
      },
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        height: 75,
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
              onTap: () {
                context.read<OwnerCubit>().showOneOwner(int.parse(pref!.getString("id") ?? "0"));
                return _onItemTapped(3);
              },
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