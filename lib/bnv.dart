
import 'package:black_box/features/cars/presentation/cubit/car/car_cubit.dart';
import 'package:black_box/features/crash/presentation/cubit/crash_cubit.dart';
import 'package:black_box/features/drivers/presentation/cubit/driver/driver_cubit.dart';
import 'package:black_box/features/profile/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/constants/global.dart';
import 'features/auth/presentation/cubit/owner/owner_cubit.dart';
import 'features/cars/presentation/screens/cars_list_screen.dart';
import 'features/home/presentation/screens/home.dart';

class BNVScreen extends StatefulWidget {
  const BNVScreen({super.key});
  @override
  State<BNVScreen> createState() => _BNVScreenState();
}

class _BNVScreenState extends State<BNVScreen> {
  int _selectedIndex = 0;
  List<Widget> get _pages => [
    HomeContent(),
    CarsListScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    context.read<CrashCubit>().showAllCrashes();
    context.read<CarCubit>().getAllCars();
    context.read<DriverCubit>().getAllDriversScore();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        height: width * .16875,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(70),
            topRight: Radius.circular(70),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () => _onItemTapped(0),
              child: Icon(
                Icons.home_outlined,
                size: width * .069,
                color: _selectedIndex == 0 ? Colors.black : Colors.white,
              ),
            ),
            GestureDetector(
              onTap: () => _onItemTapped(1),
              child: Icon(
                Icons.layers_outlined,
                size: width * .069,
                color: _selectedIndex == 1 ? Colors.black : Colors.white,
              ),
            ),

            GestureDetector(
              onTap: () {
                context.read<OwnerCubit>().showOneOwner(int.parse(pref!.getString("id") ?? "0"));
                return _onItemTapped(2);
              },
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