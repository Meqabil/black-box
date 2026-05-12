
import 'package:black_box/core/constants/images.dart';
import 'package:black_box/core/ui/widgets/notification_button.dart';
import 'package:black_box/features/cars/domain/entities/car_entity.dart';
import 'package:black_box/features/cars/presentation/screens/car_details/analysis/live_tracking.dart';
import 'package:black_box/features/cars/presentation/widgets/car_page/car_detials/car_parameter.dart';
import 'package:black_box/features/drivers/presentation/cubit/driver/driver_cubit.dart';
import 'package:black_box/features/drivers/presentation/cubit/driver/driver_state.dart';
import 'package:black_box/features/notifications/presentation/screens/notification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/constants/colors.dart';
import '../../../../home/presentation/widgets/stat_item.dart';
import '../edit_car_screen.dart';
import '../driving_events/driving_event.dart';

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

  final List<String> allParameters = [
    "Live Tracking",
    "Coolant Temp",
    "DTC Codes",
    "Road Bump",
    "Fuel Level",
  ];


  List<String> filteredParameters = [];



  @override
  void initState() {
    filteredParameters = allParameters;
    context.read<DriverCubit>().showOneDriver(int.tryParse(widget.car.driverId) ?? 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 80,
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
          const SizedBox(height: 5), // Statistics Row
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Row(
              children: [
                StatItem(
                  label: "Total Active Cars",
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
                StatItem(
                  label: "Total Cars",
                  value: "8",
                  valueColor:  Color(0xFF0068FF),
                  arrowAngle: -135,
                ),
              ],
            ),
          ),
          // Search Bar
          /*Container(
            height: 30,
            width: 330,
            decoration: BoxDecoration(
              color: const Color(0xFF052224),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Search",
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF0FFF0),
                      borderRadius: BorderRadius.circular(23),
                    ),
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(
                      controller: searchController,
                      onChanged: filterParameters,
                      textAlign: TextAlign.right,
                      decoration: const InputDecoration(
                        hintText: "Parameter",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontStyle: FontStyle.italic,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),*/
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
                                      if(driverName == '') driverName = "Unknown";

                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => DrivingScreen(
                                            driverId: widget.car.driverId,
                                            carId: widget.car.id.toString(),
                                            driverName: driverName,
                                          ),
                                        ),
                                      );
                                    },
                                    child: const Row(
                                      children: [
                                        Text(
                                          "View Driving Events",
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
                          context:context,
                          imagePath: AppImages.liveTracking,
                          title:"Live Tracking",
                          iconBgColor: Colors.blue.shade300,
                          destinationPage: LiveTracking(),
                        ),
                        CarParameter(
                          context:context,
                          imagePath: AppImages.coolant,
                          title:"Coolant Temp",
                          iconBgColor: Colors.blue.shade300,
                          destinationPage: NotificationScreen(),
                        ),
                        CarParameter(
                          context:context,
                          imagePath: AppImages.dtc,
                          title:"DTC Codes",
                          iconBgColor: AppColor.mainRedColor,
                          destinationPage: NotificationScreen(),
                        ),
                        CarParameter(
                          context:context,
                          imagePath: AppImages.roadBump,
                          title:"Road Bump",
                          iconBgColor: Colors.blue.shade300,
                          destinationPage: NotificationScreen(),
                        ),
                        CarParameter(
                          context:context,
                          imagePath: AppImages.fuelLevel,
                          title:"Fuel Level",
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

  Widget _buildStatItem(
      String label,
      String value,
      Color valueColor, {
        double arrowAngle = 0,
      }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 18,
              height: 18,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white70, width: 1),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Transform.rotate(
                angle: arrowAngle * 3.1416 / 180,
                child: const Icon(
                  Icons.arrow_back_outlined,
                  size: 12,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(width: 8),
            Text(
              label,
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
          ],
        ),
        Text(
          value,
          style: TextStyle(
            color: valueColor,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}