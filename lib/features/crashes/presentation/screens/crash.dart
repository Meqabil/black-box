
import 'package:flutter/material.dart';
import '../../../../shared/widgets/driving_events/driving_events_form.dart';
import '../widgets/crash_content.dart';

class Crash extends StatelessWidget {
  const Crash({super.key,required this.driverId,required this.driverName,required this.carId});
  final String driverId;
  final String driverName;
  final String carId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: DrivingEventsForm(
        driverId: driverId,
        driverName: driverName,
        carId: carId,
        pageContent: CrashContent()
      ),
    );
  }
}
