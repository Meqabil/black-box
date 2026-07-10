import 'package:black_box/features/crashes/presentation/widgets/aggressive_content.dart';
import 'package:flutter/material.dart';

import '../../../../shared/widgets/driving_events/driving_events_form.dart';

class AgressiveTurns extends StatelessWidget {
  const AgressiveTurns({super.key,required this.driverId,required this.driverName,required this.carId,required this.title});
  final String driverId;
  final String driverName;
  final String title;
  final int carId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: DrivingEventsForm(
          driverId: driverId,
          driverName: driverName,
          carId: carId.toString(),
          pageContent: AggressiveContent(title: title,carId: carId,)
      ),
    );
  }
}
