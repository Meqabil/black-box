
import 'package:black_box/core/constants/images.dart';
import 'package:black_box/features/cars/domain/entities/car_entity.dart';
import 'package:black_box/features/cars/presentation/cubit/car/car_cubit.dart';
import 'package:black_box/features/cars/presentation/cubit/car/car_state.dart';
import 'package:black_box/features/cars/presentation/screens/car_details/analysis/live_tracking.dart';
import 'package:black_box/features/cars/presentation/widgets/car_page/car_detials/car_parameter.dart';
import 'package:black_box/features/drivers/presentation/cubit/driver/driver_cubit.dart';
import 'package:black_box/features/drivers/presentation/cubit/driver/driver_state.dart';
import 'package:black_box/features/notifications/presentation/screens/notification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/constants/global.dart';
import '../../../../../core/theme/app_color.dart';
import '../../../../../shared/widgets/notification_button.dart';
import '../../../../home/presentation/widgets/stat_item.dart';
import '../edit_car_screen.dart';
import '../driving_events/driving_event.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CarDetailsScreen extends StatefulWidget {
  const CarDetailsScreen({
    super.key,
    required this.car,
  });
  final CarEntity car;
  @override
  State<CarDetailsScreen> createState() => _CarDetailsScreenState();
}

class _CarDetailsScreenState extends State<CarDetailsScreen> {
  final TextEditingController searchController = TextEditingController();




  @override
  void initState() {
    context.read<DriverCubit>().showOneDriver(int.tryParse(widget.car.driverId) ?? 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: width * 0.186,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${widget.car.name} : ${widget.car.id}',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            IconButton(
              onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => EditCarScreen(imageUrl : widget.car.image ?? '',carId: widget.car.id.toString(),name: widget.car.name, vClass: widget.car.vClass, plateNumber: widget.car.plateNumber, driverId: widget.car.driverId,))
                );
              },
              icon: Icon(Icons.edit_calendar),
            )
          ],
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 20),
            child: NotificationButton()
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: width * 0.045 / 5),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Row(
              children: [
                StatItem(
                  label: AppLocalizations.of(context)!.total_active_cars,
                  value:"1",
                  valueColor:Colors.white,
                  arrowAngle: 135,
                ),
                Container(
                  width: 2,
                  height: 40,
                  color: const Color(0xFFDFF7E2),
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                ),
                BlocBuilder<CarCubit,CarState>(
                  builder: (context,state) {
                    if(state is CarSuccess){
                      return StatItem(
                        label: AppLocalizations.of(context)!.total_cars,
                        value: state.carsList.length.toString(),
                        valueColor:  Color(0xFF0068FF),
                        arrowAngle: -135,
                      );
                    }
                    return StatItem(
                      label: AppLocalizations.of(context)!.total_cars,
                      value: "0",
                      valueColor:  Color(0xFF0068FF),
                      arrowAngle: -135,
                    );
                  }
                ),
              ],
            ),
          ),
          const SizedBox(height: 65),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: ListView(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            BlocBuilder<DriverCubit,DriverState>(
                              builder: (context,state) {
                                if(state is OneDriverSuccess){
                                  return TextButton(
                                    onPressed: () {
                                      String driverName = '';
                                      driverName = state.driver.name;
                                      if(driverName == '') driverName = AppLocalizations.of(context)!.unknown_driver;
                                      context.read<DriverCubit>().getDriverScore(int.parse(widget.car.driverId));
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => DrivingScreen(
                                            driverId: widget.car.driverId,
                                            carId: widget.car.id.toString(),
                                            driverName: driverName,
                                          ),
                                        ),
                                      );
                                    },
                                    child: Row(
                                      children: [
                                        Text(
                                          AppLocalizations.of(context)!.view_driving_events,
                                          style: TextStyle(
                                            color: Color(0xFF0068FF),
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Icon(
                                          Icons.chevron_right,
                                          size: 18,
                                          color: Color(0xFF0068FF),
                                        ),
                                      ],
                                    ),
                                  );
                                }
                                else {
                                  return Container();
                                }

                              }
                            ),
                          ],
                        ),
                        CarParameter(
                          context: context,
                          imagePath: AppImages.liveTracking,
                          title: AppLocalizations.of(context)!.tracking_live,
                          iconBgColor: Colors.blue.shade300,
                          destinationPage: LiveTracking(),
                        ),
                        CarParameter(
                          context: context,
                          imagePath: AppImages.coolant,
                          title: AppLocalizations.of(context)!.coolant_temp,
                          iconBgColor: Colors.blue.shade300,
                          destinationPage: NotificationScreen(),
                        ),
                        CarParameter(
                          context:context,
                          imagePath: AppImages.dtc,
                          title: AppLocalizations.of(context)!.dtc_codes,
                          iconBgColor: AppColor.mainRedColor,
                          destinationPage: NotificationScreen(),
                        ),
                        CarParameter(
                          context:context,
                          imagePath: AppImages.roadBump,
                          title: AppLocalizations.of(context)!.road_bump,
                          iconBgColor: Colors.blue.shade300,
                          destinationPage: NotificationScreen(),
                        ),
                        CarParameter(
                          context:context,
                          imagePath: AppImages.fuelLevel,
                          title: AppLocalizations.of(context)!.fuel_level,
                          iconBgColor: AppColor.mainRedColor,
                          destinationPage: NotificationScreen(),
                        ),
                      ],
                    )
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}