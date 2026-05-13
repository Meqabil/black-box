import 'package:black_box/core/constants/images.dart';
import 'package:black_box/features/crash/presentation/screens/crash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../core/constants/global.dart';
import '../../../../../../core/ui/widgets/driving_events/sub_widgets/event_item.dart';
import '../../../../../crash/presentation/cubit/crash_cubit.dart';
import '../../../../../../bnv.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
            margin: EdgeInsets.only(top: width * 0.045),
            width: double.infinity,
            padding: EdgeInsets.all( width * 0.038),
            decoration: BoxDecoration(

              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(60),
              ),
            ),
            child: Column(
              children: [
                EventItem(
                  AppImages.majorCrash,
                  AppLocalizations.of(context)!.event_major_crashes,
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
                  AppLocalizations.of(context)!.event_hard_braking,
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
                  AppLocalizations.of(context)!.event_speeding_incident,
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
                  AppLocalizations.of(context)!.event_aggressive_turns,
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
