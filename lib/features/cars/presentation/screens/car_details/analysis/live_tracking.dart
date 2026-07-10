import 'dart:ui';
import 'package:black_box/core/constants/global.dart';
import 'package:black_box/core/theme/app_color.dart';
import 'package:black_box/features/cars/domain/entities/car_entity.dart';
import 'package:black_box/features/trips/data/datasources/trip_datasource.dart';
import 'package:black_box/features/trips/domain/usecases/get_last_trip_usecase.dart';
import 'package:black_box/features/trips/presentation/cubit/trip_cubit.dart';
import 'package:black_box/features/trips/presentation/cubit/trip_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import '../../../../../../core/constants/images.dart';
import '../../../../../../core/utils/location_helper.dart';
import '../../../functions/get_route.dart';

class LiveTracking extends StatefulWidget {
  const LiveTracking({super.key,required this.car});
  final CarEntity car;
  @override
  State<LiveTracking> createState() => _LiveTrackingState();
}

class _LiveTrackingState extends State<LiveTracking> {
  final MapController mapController = MapController();
  LatLng? currentLocation;
  final LatLng cairo = const LatLng(30.0444, 31.2357);
  List<LatLng> routePoints = [];
  int toggle = 0;
  double zoom = 13;
  String data = '';

  LatLng start = LatLng(29.987950, 31.441860);
  LatLng end = LatLng(30.121900, 31.405600);
  bool routeDrawn = false;
  @override
  void initState() {
    super.initState();
    getLastLocationCarWithIn(widget.car.id.toString());
    WidgetsBinding.instance.addPostFrameCallback((_) {
      getLocation();
    });
  }
  getLastLocationCarWithIn(String carId) async{
    TripDataSource dataSource = TripDataSource();

    data = await dataSource.getLastTripCarWithIn(carId);
    return data;
  }
  //  GET USER LOCATION
  Future<void> getLocation() async {
    try {
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();

      if (!serviceEnabled) {
        await LocationHelper.showGpsDialog(
          context: context,
          onRetry: getLocation,
        );
        return;
      }

      LocationPermission permission =
      await Geolocator.checkPermission();

      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();

        if (permission == LocationPermission.denied) {
          await LocationHelper.showPermissionNeededDialog(
            context: context,
            onRetry: getLocation,
          );
          return;
        }
      }

      if (permission == LocationPermission.deniedForever) {
        await LocationHelper.showPermissionDialog(
          context: context,
          onRetry: getLocation,
        );
        return;
      }

      // GET LOCATION
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );

      LatLng userLocation =
      LatLng(position.latitude, position.longitude);

      print("✅ USER LOCATION: $userLocation");

      userLocation = LatLng(30.044420, 31.235712);
      // ✅ GET ROUTE FROM API
      final route = await getRoute(start,end);

      print("✅ Route loaded: ${route.length}");

      if (!mounted) return;

      setState(() {
        currentLocation = userLocation;
        routePoints = route;
      });

      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted || routePoints.isEmpty) return;

        mapController.fitCamera(
          CameraFit.bounds(
            bounds: LatLngBounds.fromPoints(routePoints),
            padding: const EdgeInsets.all(50),
          ),
        );
      });
    } catch (e) {
      print("🔥 ERROR: $e");

      if (!mounted) return;

      setState(() {
        currentLocation ??= cairo;
        routePoints = [
          currentLocation!,
          cairo,
        ];
      });

      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        mapController.move(currentLocation!, zoom);
      });
    }
  }


  Future<void> drawTripPath(TripDetailsSuccess state) async {
    if (state.trip.locations == null ||
        state.trip.locations!.isEmpty) {
      return;
    }

    final points = state.trip.locations!
        .map(
          (e) => LatLng(
        double.parse(e.latitude),
        double.parse(e.longitude),
      ),
    )
        .toList();

    setState(() {
      routePoints = points;
      start = points.first;
      end = points.last;
    });

    mapController.fitCamera(
      CameraFit.bounds(
        bounds: LatLngBounds.fromPoints(points),
        padding: const EdgeInsets.all(50),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${widget.car.name} : ${widget.car.id}")),
      body: currentLocation == null
          ? const Center(child: CircularProgressIndicator())
          : BlocBuilder<TripCubit,TripState>(


            builder: (context,state) {
              if (state is TripDetailsSuccess && !routeDrawn) {
                routeDrawn = true;

                WidgetsBinding.instance.addPostFrameCallback((_) {
                  drawTripPath(state);
                });
              }

              return Stack(
                alignment: Alignment.bottomCenter,
                children: [

                  FlutterMap(
                          mapController: mapController,
                          options: MapOptions(
                  initialCenter: currentLocation!,
                  initialZoom: zoom,
                          ),
                          children: [
                  TileLayer(
                    urlTemplate:
                    "https://api.maptiler.com/maps/base-v4/{z}/{x}/{y}.png?key=QpG5PqQAuydF4YpwAbkp",
                    userAgentPackageName: 'com.black.box.black_box',
                  ),

                  // ROUTE LINE
                  PolylineLayer(
                    polylines: [
                      Polyline(
                        points: routePoints,
                        strokeWidth: 5,
                        color: (state is TripDetailsSuccess &&
                            state.trip.locations != null &&
                            state.trip.locations!.isNotEmpty)
                            ? (() {
                          final speed =
                              double.tryParse(state.trip.locations![state.trip.locations!.length - 1].speed) ?? 0;

                          if (speed <= 80) {
                            return Colors.green;
                          } else if (speed >= 120) {
                            return Colors.red;
                          } else {
                            return Colors.yellow;
                          }
                        })()
                            : Colors.yellow,
                      ),
                    ],
                  ),
                  MarkerLayer(
                    markers: [
                      Marker(
                        point: start!,
                        width: 80,
                        height: 80,
                        child: const Icon(
                          Icons.my_location,
                          color: Colors.green,
                          size: 40,
                        ),
                      ),
                      Marker(
                        point: end,
                        width: 80,
                        height: 80,
                        alignment: Alignment.bottomCenter,
                        child: const Icon(
                          Icons.location_on,
                          color: Colors.red,
                          size: 40,
                        ),
                      ),
                    ],
                  ),
                          ],
                        ),
                  toggle == 0 ? ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 4,
                        sigmaY: 3,
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 250,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white.withAlpha(25),
                          borderRadius: BorderRadius.circular(35),
                          border: Border.all(width: 1,color: Colors.white)
                        ),
                        child: Container(
                          width: 100,
                          height: 90,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color(0xff5c586e).withAlpha(200),
                            borderRadius: BorderRadius.circular(70),
                            border: Border(
                              top: BorderSide(
                                width: 10,
                                color: (state is TripDetailsSuccess &&
                                    state.trip.locations != null &&
                                    state.trip.locations!.isNotEmpty)
                                    ? (() {
                                  final speed =
                                      double.tryParse(state.trip.locations![state.trip.locations!.length - 1].speed) ?? 0;

                                  if (speed <= 80) {
                                    return Colors.green;
                                  } else if (speed >= 120) {
                                    return Colors.red;
                                  } else {
                                    return Colors.yellow;
                                  }
                                })()
                                    : Colors.green,
                              )
                            )
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              (state is TripDetailsSuccess) ? Text("${state.trip.locations![state.trip.locations!.length - 1].speed}",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),): Text("43",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
                              Text("km/h",style: TextStyle(color: Colors.white,fontSize: 18,),),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ) : Container(),
                  
                  toggle == 0 ? Positioned(
                    bottom: -35,
                    child: SizedBox(
                      width: width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          SizedBox(
                            width:  100,
                            height: 100,
                            child: Column(
                              children: [
                                Text((state is TripDetailsSuccess) ? double.parse(state.trip.distanceKm).toStringAsFixed(2) : "40",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                Text("Distance",style: TextStyle(fontSize: 12),),
                              ],
                            ),
                          ),
                          SizedBox(
                            width:  100,
                            height: 100,
                            child: Column(
                              children: [
                                Text((state is TripDetailsSuccess) ? "${state.trip.locations![state.trip.locations!.length - 1].fuelLevel}" : "0",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                Text("Fuel level",style: TextStyle(fontSize: 12),),
                              ],
                            ),
                          ),
                          SizedBox(
                            width:  100,
                            height: 100,
                            child: Column(
                              children: [
                                //Text((state is TripDetailsSuccess) ? "${state.trip.id}" : "0"),
                                Text((state is TripDetailsSuccess) ? "${state.trip.locations![state.trip.locations!.length - 1].speed}" : "0",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                Text("Speed",style: TextStyle(fontSize: 12),),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ) : Container(),
                  Positioned(
                      top:25,
                      right: 25,
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            if(toggle == 0){
                              toggle = 1;
                            }else {
                              toggle = 0;
                            }
                          });
                        },
                        child: Container(
                          width: 50,
                          height:50,
                          decoration: BoxDecoration(
                            color: AppColor.mainRedColor,
                            borderRadius: BorderRadius.circular(90)
                          ),
                        child: Image.asset(AppImages.speedCounter,width: 50,height: 50,)),
                      )
                  ),
                  toggle == 1 ? Container(
                    margin: EdgeInsets.only(bottom: 25),
                    child: Row(
                      children: [
                        SizedBox(width: 15,),
                        InkWell(
                          onTap: () async{
                            mapController.move(
                              mapController.camera.center,
                              mapController.camera.zoom + 1,
                            );
                            routeDrawn = false;
                            context.read<TripCubit>().showTripDetail(int.parse(data));
                          },
                          child: Container(
                            width: width * 0.15,
                            height: width * 0.15,
                            decoration: BoxDecoration(
                              color: Colors.grey.withAlpha(155),
                              borderRadius: BorderRadius.circular(width * 0.04)
                            ),
                            child: Icon(Icons.add,size: width * 0.085,),
                          ),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: (){
                            mapController.move(
                              mapController.camera.center,
                              mapController.camera.zoom - 1,
                            );
                          },
                          child: Container(
                            width: width * 0.15,
                            height: width * 0.15,
                            decoration: BoxDecoration(
                              color: Colors.grey.withAlpha(155),
                              borderRadius: BorderRadius.circular(width * 0.04)
                            ),
                            child: Icon(Icons.remove,size: width * 0.085,),
                          ),
                        ),

                        SizedBox(width: 15,),
                      ],
                    ),
                  ) : Container()
                ],
              );
            }
          ),
    );
  }
}
