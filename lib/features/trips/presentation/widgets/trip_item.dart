import 'package:black_box/features/trips/data/models/trip_model.dart';
import 'package:black_box/features/trips/presentation/cubit/trip_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/theme/app_color.dart';
import '../../../../../core/constants/global.dart';
import 'package:black_box/core/localization/generated/app_localizations.dart';

import '../screens/trip_details_screen.dart';

class TripItem extends StatelessWidget {
  const TripItem({super.key, required this.trip,required this.speeds});
  final TripModel trip;
  final List speeds;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        context.read<TripCubit>().showTripDetail(trip.id);
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => SpeedInfoScreen()));
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            spacing: width * 0.045 / 5,
            children: [
              // TripButton(size: width * 0.117, imageName: AppImages.majorTrip),
              SizedBox(width: width * 0.045 / 6),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FutureBuilder<String>(
                      future: getPlaceName(
                        double.parse(trip.startLat),
                        double.parse(trip.startLng),
                      ),
                      builder: (context, snap) {
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Start address : ",
                              style: TextStyle(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onSecondaryFixed,
                                fontSize: width * 0.028,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                snap.data ?? "",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: width * 0.028,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),

                    const SizedBox(height: 6),

                    FutureBuilder<String>(
                      future: getPlaceName(
                        double.tryParse(trip.endLat) ?? 30.888888888,
                        double.tryParse(trip.endLng) ?? 29.02358565,
                      ),
                      builder: (context, snap) {
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "End address : ",
                              style: TextStyle(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onSecondaryFixed,
                                fontSize: width * 0.028,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                snap.data ?? "",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: width * 0.028,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 25),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FittedBox(
                      child: Text(
                        "status",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onSurface,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    FittedBox(
                      child: Text(
                        trip.status,
                        style: TextStyle(
                          color: (trip.status != "ongoing") ?  Colors.green : Colors.blue,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    (trip.status != "ongoing") ? Text(
                      "Total Distance",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurface,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ) : Container(),
                    (trip.status != "ongoing") ? Text(
                      "${double.tryParse(trip.distanceKm)?.toStringAsFixed(2)} Km",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurface,
                        fontSize: 15,
                      ),
                    ) : Container(),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 8),

          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            child: Divider(
              color: AppColor.mainRedColor,
              thickness: 2,
              height: 12,
            ),
          ),

          const SizedBox(height: 18),
        ],
      ),
    );
  }
}