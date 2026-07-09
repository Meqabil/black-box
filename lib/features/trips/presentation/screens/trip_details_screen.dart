import 'package:black_box/features/trips/presentation/widgets/speed_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/trip_cubit.dart';
import '../cubit/trip_state.dart';
import '../widgets/speed_bar.dart';

class SpeedInfoScreen extends StatefulWidget {
  const SpeedInfoScreen({super.key});

  @override
  State<SpeedInfoScreen> createState() => _SpeedInfoScreenState();
}

class _SpeedInfoScreenState extends State<SpeedInfoScreen> {
  List<double> tempList = [];
  double onGoingTemp = 0;
  double tempCurrentSpeed = 0;
  double tempMax = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Speed Information",
        ),
      ),
      body: Container(
        color: Colors.white,
        child: BlocBuilder<TripCubit, TripState>(
          builder: (context, state) {
            if (state is TripDetailsSuccess) {
              tempList.clear();

              (state.trip.locations ?? [])
                  .forEach((e) => tempList.add(double.parse(e.coolantTemp)));

              if (tempList.isNotEmpty) {
                tempCurrentSpeed = tempList.last;
                tempMax = tempList.reduce((a, b) => a > b ? a : b);
                onGoingTemp =
                    tempList.reduce((a, b) => a + b) / tempList.length;
              }

              return Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SpeedTile(
                      icon: Icons.thermostat,
                      title:(state.trip.status == "ongoing") ?  "Current Speed" : "Last Speed",
                      value: tempCurrentSpeed,
                      color: Colors.blue,
                    ),

                    SpeedChart(
                      speeds: tempList,
                    ),

                    const SizedBox(height: 20),

                    const Divider(),

                    SpeedTile(
                      icon: Icons.local_fire_department,
                      title: "Maximum Speed",
                      value: (state.trip.status == "ongoing")
                          ? tempMax
                          : tempMax,
                      color: Colors.red,
                    ),

                    const Divider(),

                    SpeedTile(
                      icon: Icons.thermostat_auto,
                      title: "Average Speed",
                      value: (state.trip.status == "ongoing") ? onGoingTemp : onGoingTemp,
                      color: Colors.green,
                    ),
                  ],
                ),
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}