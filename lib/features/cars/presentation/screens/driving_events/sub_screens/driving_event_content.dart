import 'package:black_box/core/constants/images.dart';
import 'package:black_box/features/crash/presentation/screens/crash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../core/ui/widgets/driving_events/sub_widgets/event_item.dart';
import '../../../../../crash/presentation/cubit/crash_cubit.dart';
import '../../../../../../bnv.dart';
class DrivingEventContent extends StatelessWidget {
  const DrivingEventContent({super.key,required this.driverId,required this.driverName,required this.carId});
  final String driverId;
  final String driverName;
  final String carId;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(top: 20),
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(60),
              ),
            ),
            child: Column(
              children: [
                EventItem(
                  AppImages.majorCrash,
                  "Major Crashes",
                  Color(0xFfD96B6B),
                  onTap: () {
                    context.read<CrashCubit>().showAllCrashes();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CrashScreen(
                          driverId: driverId,
                          driverName: driverName,
                          carId: carId,
                        ),
                      ),
                    );
                  },
                ),
                EventItem(
                  AppImages.handBreak,
                  "Hard Braking",
                  Colors.red,
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => HardBrakingScreen(),
                    //   ),
                    // );
                  },
                ),
                EventItem(
                  AppImages.speed,
                  "Speeding Incidents",
                  Color(0xFF8B0000),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BNVScreen(),
                      ),
                    );
                  },
                ),
                EventItem(
                  AppImages.turns,
                  "Aggressive Turns",
                  Colors.red,
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => AggressiveTurnsScreen(),
                    //   ),
                    // );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
