import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  final VoidCallback onBackToHome;
  const NotificationScreen({super.key, required this.onBackToHome});

  @override
  Widget build(BuildContext context) {
    //const Color mainred = Color(0xFFA3000B);
    const Color primaryred = Color(0xFF9B0D15);

    return Scaffold(
      backgroundColor: primaryred,
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 50,
                  left: 20,
                  right: 20,
                  bottom: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: onBackToHome,
                      child: const Icon(Icons.arrow_back, color: Colors.white),
                    ),
                    const Text(
                      'Notification',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.notifications_none,
                        color: primaryred,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),

              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: ListView(
                    padding: const EdgeInsets.all(25),
                    children: [
                      _buildSectionHeader("Today"),
                      _buildNotificationItem(
                        icon: Icons.notifications,
                        title: "Alert!",
                        subtitle:
                            "Vehicle #0002 detected excessive  \n speeding - 95 km/h in 60 km/h zone",
                        time: "17:00 - April 24",
                      ),
                      _buildNotificationItem(
                        icon: Icons.star_rounded,
                        title: "New Update",
                        subtitle:
                            "New blackbox firmware version 2.1.3 \n ready for installation",
                        time: "17:00 - April 24",
                      ),

                      _buildSectionHeader("Yesterday"),
                      _buildNotificationItem(
                        icon: Icons.notifications,
                        title: "Alert",
                        subtitle:
                            "Vehicle #0001 needs oil change in \n next 500 km",
                        time: "17:00 - April 24",
                      ),
                      _buildNotificationItem(
                        icon: Icons.notifications,
                        title: "Alert!",
                        subtitle:
                            "Weekly fleet safety report is now \n available for review",
                        time: "17:00 - April 24",
                      ),

                      _buildSectionHeader("This Weekend"),
                      _buildNotificationItem(
                        icon: Icons.notifications,
                        title: "Alert!",
                        subtitle:
                            "Vehicle #0001 completed 120 km trip  \n with 88% safety score",
                        time: "17:00 - April 24",
                      ),
                      _buildNotificationItem(
                        icon: Icons.notifications,
                        title: "Alert!",
                        subtitle:
                            "Vehicle #0001 fuel level critically low (15%)",
                        time: "17:00 - April 24",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: TextStyle(color: Colors.grey[600], fontSize: 14),
      ),
    );
  }

  Widget _buildNotificationItem({
    required IconData icon,
    required String title,
    required String subtitle,
    required String time,
  }) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color(0xFFA3000B),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, color: Colors.white, size: 24),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 13,
                      height: 1.4,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      time,
                      style: const TextStyle(color: Colors.blue, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const Divider(height: 30, thickness: 1),
      ],
    );
  }
}

