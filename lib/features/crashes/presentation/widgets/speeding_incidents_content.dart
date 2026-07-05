import 'package:black_box/features/trips/data/models/locations_model.dart';
import 'package:black_box/features/trips/presentation/cubit/trip_cubit.dart';
import 'package:black_box/features/trips/presentation/cubit/trip_state.dart';
import 'package:black_box/features/trips/presentation/widgets/trip_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/constants/global.dart';
import '../../../../core/constants/images.dart';
import '../../../../core/localization/generated/app_localizations.dart';
import 'sub_widgets/crash_button.dart';

class SpeedingIncidentsContent extends StatefulWidget {
  const SpeedingIncidentsContent({super.key,required this.carId});
  final String carId;

  @override
  State<SpeedingIncidentsContent> createState() => _SpeedingIncidentsContentState();
}

class _SpeedingIncidentsContentState extends State<SpeedingIncidentsContent> {
  List tempList = [];
  List tempSpeeds = [];
  @override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.025,vertical: 8),
      child: Column(
        children: [
          SizedBox(height: 10,),
          SizedBox(
            height: width * 0.116,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppLocalizations.of(context)!.events),
                CrashButton(size: width * 0.0813, imageName: AppImages.calender)
              ],
            ),
          ),
          BlocBuilder<TripCubit,TripState>(
            builder: (context,state) {
              if(state is TripsHistorySuccess){
                print(state.trips);
                tempList = [24,56,74,85];
                if(state.trips.isEmpty){
                  return Center(
                    child: Text("Empty"),
                  );
                }
                return Expanded(
                  child: ListView.builder(
                    itemCount: state.trips.length,
                    itemBuilder: (context, index) {
                      return TripItem(trip: state.trips[index],speeds: tempSpeeds,);
                    },
                  ),
                );
              }
              if(state is TripLoading){
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              return Center(
                child: IconButton(
                    onPressed: (){
                      context.read<TripCubit>().showTripsHistory(widget.carId);
                    }, icon: Icon(Icons.refresh)),
              );
            }
          )
        ],
      ),
    );
  }
}
