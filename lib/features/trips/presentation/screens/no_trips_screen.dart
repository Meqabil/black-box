import 'package:flutter/material.dart';
import '../../../../../core/theme/app_color.dart';

class NoTripsScreen extends StatelessWidget {
  const NoTripsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface ,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 140,
                height: 140,
                decoration: BoxDecoration(
                  color: AppColor.mainRedColor.withOpacity(.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.route_rounded,
                  size: 75,
                  color: AppColor.mainRedColor,
                ),
              ),

              const SizedBox(height: 35),

              Text(
                "No Trips Yet",
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColor.mainRedColor,
                ),
              ),

              const SizedBox(height: 15),

              Text(
                "This vehicle hasn't recorded any trips yet.\nOnce a trip starts, it will appear here with its route, speed, and driving statistics.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey.shade400
                )
              ),

              const SizedBox(height: 40),

              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.mainRedColor,
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  icon: const Icon(Icons.arrow_back),
                  label: const Text(
                    "Go Back",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}