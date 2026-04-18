
import 'package:black_box/features/analysis/analysis.dart';
import 'package:flutter/material.dart';

import '../../../../home/notification.dart';
import '../quickly_analysis.dart';
import 'analysis/acceleration_analysis.dart';
import 'analysis/latitude_analysis.dart';
import 'analysis/location_analysis.dart';
import 'analysis/longitude_analysis.dart';
import 'analysis/oil_analysis.dart';
import 'driving_event.dart';

class CarDetailsScreen extends StatefulWidget {
  final VoidCallback onBackToHome;
  final VoidCallback onNotificationTap;
  const CarDetailsScreen({
    super.key,
    required this.onBackToHome,
    required this.onNotificationTap,
    required this.carName,
    required this.id
  });
  final String carName;
  final String id;
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
    super.initState();
    filteredParameters = allParameters;
  }

  void filterParameters(String value) {
    setState(() {
      filteredParameters = allParameters
          .where(
            (parameter) =>
            parameter.toLowerCase().startsWith(value.toLowerCase()),
      ).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    const Color primaryRed = Color(0xFF9B0D15);
    return Scaffold(
      backgroundColor: primaryRed,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 80,
        leading: Transform.translate(
          offset: const Offset(0, 25),
          child: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              if (Navigator.canPop(context)) {
                Navigator.pop(context);
              } else {
                widget.onBackToHome();
              }
            },
          ),
        ),
        title: Transform.translate(
          offset: const Offset(0, 25),
          child:  Text(
            '${widget.carName} : ${widget.id}',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 20),
            child: IconButton(
              icon: Container(
                padding: const EdgeInsets.all(6),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.notifications_none,
                  color: Color(0xFF9B0D15),
                  size: 20,
                ),
              ),
              onPressed: () {
                Navigator.of(context, rootNavigator: true).push(
                  MaterialPageRoute(
                    builder: (context) => NotificationScreen(),
                  ),
                );
              },
            ),
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
                _buildStatItem(
                  "Total Active Cars",
                  "1",
                  Colors.white,
                  arrowAngle: 135,
                ),
                Container(
                  width: 2,
                  height: 40,
                  color: const Color(0xFFDFF7E2),
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                ),
                _buildStatItem(
                  "Total Cars",
                  "8",
                  const Color(0xFF0068FF),
                  arrowAngle: -135,
                ),
              ],
            ),
          ), // Search Bar
          Container(
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
          ),
          const SizedBox(height: 25),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      padding: const EdgeInsets.only(top: 10),
                      itemCount: filteredParameters.length + 1,
                      itemBuilder: (context, index) {
                        if (index == 0) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                      const DrivingEventsScreen(),
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
                              ),
                            ],
                          );
                        }

                        String param = filteredParameters[index - 1];

                        Widget destination;
                        Color color;
                        String img;

                        switch (param) {
                          case "Live Tracking":
                            destination = const Analysis();
                            color = Colors.blue.shade300;
                            img = "assets/speed.png";
                            break;
                          case "Coolant Temp":
                            destination = const LongitudeAnalysisScreen();
                            color = Colors.red.shade800;
                            img = "assets/Longitude.png";
                            break;
                          case "DTC Codes":
                            destination = const LatitudeAnalysisScreen();
                            color = Colors.blue.shade400;
                            img = "assets/Latitude.png";
                            break;
                          case "Road Bump":
                            destination = const AccelerationAnalysisScreen();
                            color = Colors.red.shade900;
                            img = "assets/Acceleration.png";
                            break;
                          case "Fuel Level":
                            destination = const LocationAnalysisScreen();
                            color = Colors.blue.shade300;
                            img = "assets/Location.png";
                            break;
                          default:
                            destination = const SizedBox();
                            color = Colors.grey;
                            img = "";
                        }

                        return Column(
                          children: [
                            const SizedBox(height: 5),
                            _buildDetailRow(
                              context,
                              img,
                              param,
                              color,
                              destination,
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailRow(
      BuildContext context,
      String imagePath,
      String title,
      Color iconBgColor,
      Widget destinationPage,
      ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: iconBgColor,
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              imagePath,
              width: 28,
              height: 28,
              fit: BoxFit.contain,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => destinationPage),
                  );
                },
                child: const Text(
                  "Last Updates",
                  style: TextStyle(
                    color: Color(0xFF0068FF),
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
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