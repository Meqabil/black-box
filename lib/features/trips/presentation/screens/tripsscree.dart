import 'package:black_box/core/constants/global.dart';
import 'package:black_box/features/trips/data/models/trip_model.dart';
import 'package:black_box/features/trips/presentation/cubit/trip_cubit.dart';
import 'package:black_box/features/trips/presentation/cubit/trip_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';

class Tripsscree extends StatefulWidget {
  const Tripsscree({super.key});

  @override
  State<Tripsscree> createState() => _TripsscreeState();
}

class _TripsscreeState extends State<Tripsscree> {
  Future<void> getCityNameFromCoordinates(double lat, double lng) async {
    try {
      // This is the key line that does the reverse geocoding
      List<Placemark> placemarks = await placemarkFromCoordinates(lat, lng);

      if (placemarks.isNotEmpty) {
        Placemark place = placemarks.first;
        // The city, town, or village name
        String city = place.locality ?? "";
        // The country
        String country = place.country ?? "";

        print("City: $city, Country: $country");
        // You can also access other fields like place.administrativeArea (state), place.postalCode, etc.
      }
    } catch (e) {
      print("Error getting address: $e");
    }
  }

  Future<String> getPlaceName(double lat, double lng) async {
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(lat, lng);

      Placemark place = placemarks.first;

      print("Country: ${place.country}");
      print("City: ${place.locality}");
      print("Area: ${place.subLocality}");
      print("Street: ${place.street}");
      return "${place.country} ${place.locality} ${place.subLocality}  ${place.street}";
    } catch (e) {
      print(e.toString());
    }
    return '';
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('trip'),),
      body: Container(
        child: Column(
          children: [
            Text('Trips'),
            ElevatedButton(onPressed: (){
              context.read<TripCubit>().showTripsHistory();
            }, child: Text('load data')),
            ElevatedButton(onPressed: (){
              getPlaceName(30.04444, 31.2357);
            }, child: Text('show city')),

            BlocBuilder<TripCubit,TripState>(
              builder: (context,state){
                if(state is TripsHistorySuccess){
                  List trips = state.trips;
                  return Container(
                    height: height - 200,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: trips.length,
                      itemBuilder: (context,idx){
                        return Container(

                          child: Column(
                            children: [
                              Text("vehicle Id : ${trips[idx].vehicleId}"),
                              Text("driver Id${trips[idx].driverId}"),
                              FutureBuilder(
                                  future: getPlaceName(double.parse(trips[idx].startLat), double.parse(trips[idx].startLng)),
                                  builder: (context,val){
                                    return Text("Start address ${val.data}");
                                  }
                              ),
                              FutureBuilder(
                                  future: getPlaceName(double.parse(trips[idx].endLat), double.parse(trips[idx].endLng)),
                                  builder: (context,val){
                                    return Text("End address ${val.data}");
                                  }
                              ),

                            ],
                          ),
                        );
                      },
                    ),
                  );
                }
                return Center(child: CircularProgressIndicator(),);
              },
            )
          ],
        ),
      ),
    );
  }
}
