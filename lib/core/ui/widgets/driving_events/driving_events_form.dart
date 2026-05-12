import 'package:black_box/core/constants/images.dart';
import 'package:black_box/core/ui/widgets/driving_events/sub_widgets/info_card.dart';
import 'package:black_box/core/ui/widgets/notification_button.dart';
import 'package:flutter/material.dart';
class DrivingEventsForm extends StatelessWidget {
  const DrivingEventsForm({super.key,required this.driverId,required this.driverName,required this.carId,required this.pageContent});
  final String driverName;
  final String driverId;
  final String carId;
  final Widget pageContent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 15),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, size: 25),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),

                  Text(
                    carId,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  NotificationButton()
                ],
              ),
            ),

            const SizedBox(height: 10),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: const [
                  Text("Driving Behavior Score"),
                  SizedBox(height: 8, width: double.infinity),
                  Text(
                    "84%",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: InfoCard(
                      title: "Driver Name",
                      value: driverName,
                      imagePath: AppImages.driver,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: InfoCard(
                      title: "Driver Id",
                      value: driverId,
                      imagePath: AppImages.id,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 1),

            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(60),
                  ),
                ),
                child: pageContent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}





