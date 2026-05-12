import 'package:black_box/core/ui/widgets/driving_events/driving_events_form.dart';
import 'package:black_box/features/cars/presentation/screens/driving_events/sub_screens/driving_event_content.dart';
import 'package:flutter/material.dart';
class DrivingScreen extends StatelessWidget {
  const DrivingScreen({super.key,required this.driverId,required this.driverName,required this.carId});
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
          pageContent: DrivingEventContent(
            driverId: driverId,
            driverName: driverName,
            carId: carId,
          )
      ),
    );
  }
}
