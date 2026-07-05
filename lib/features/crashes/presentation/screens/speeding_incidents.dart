import 'package:black_box/features/crashes/presentation/widgets/speeding_incidents_content.dart';
import 'package:black_box/features/trips/presentation/cubit/trip_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../shared/widgets/driving_events/driving_events_form.dart';

class SpeedIncidents extends StatelessWidget {
  const SpeedIncidents({super.key,required this.driverId,required this.driverName,required this.carId});
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
          pageContent: RefreshIndicator(
              onRefresh: () async{
                context.read<TripCubit>().showTripsHistory(carId);
                print('object');
              },
              child: SpeedingIncidentsContent(carId: carId,)
          )
      ),
    );
  }
}
