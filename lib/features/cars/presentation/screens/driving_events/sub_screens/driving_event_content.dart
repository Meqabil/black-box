import 'package:black_box/core/constants/images.dart';
import 'package:black_box/features/crashes/presentation/screens/aggressive_turns.dart';
import 'package:black_box/features/crashes/presentation/screens/crash.dart';
import 'package:black_box/features/crashes/presentation/screens/hard_braking.dart';
import 'package:black_box/features/crashes/presentation/screens/speeding_incidents.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../core/constants/global.dart';
import '../../../../../../shared/widgets/driving_events/sub_widgets/event_item.dart';
import '../../../../../crashes/presentation/cubit/crash_cubit.dart';
import 'package:black_box/core/localization/generated/app_localizations.dart';


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
                    context.read<CrashCubit>().showAllCrashes("major_crash");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Crash(
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
                    context.read<CrashCubit>().showAllCrashes("hard_braking");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HardBraking(driverId: driverId, driverName: driverName, carId: carId),
                      ),
                    );
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
                        builder: (context) => SpeedIncidents(driverId: driverId, driverName: driverName, carId: carId),
                      ),
                    );
                  },
                ),
                EventItem(
                  AppImages.turns,
                  AppLocalizations.of(context)!.event_aggressive_turns,
                  Colors.red,
                  onTap: () {
                    context.read<CrashCubit>().showAllCrashes("aggressive_turn");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AgressiveTurns(driverId: driverId, driverName: driverName, carId: carId),
                      ),
                    );
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
