import 'package:black_box/core/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../notifications/presentation/screens/notification_screen.dart';
import 'evaluate_accident.dart';

class QuicklyAnalysis extends StatefulWidget {
  final VoidCallback onNotificationTap;
  final VoidCallback onBackToHome;

  const QuicklyAnalysis({
    super.key,
    required this.onNotificationTap,
    required this.onBackToHome,
  });

  @override
  State<QuicklyAnalysis> createState() => _QuicklyAnalysisState();
}

class _QuicklyAnalysisState extends State<QuicklyAnalysis> {
  Map<String, String> accidentSeverity = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.mainRedColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Quickly Analysis',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 17, top: 15),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context, rootNavigator: true).push(
                  MaterialPageRoute(
                    builder: (context) => NotificationScreen(),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(8),
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
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: AppColor.cardPink,
                borderRadius: BorderRadius.circular(35),
              ),
              child: IntrinsicHeight(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: AppColor.cardPink,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: IntrinsicHeight(
                    child: Row(
                      children: [
                        _buildCircularIndicator(),

                        const VerticalDivider(
                          thickness: 1.5,
                          color: Colors.white,
                          width: 30,
                          indent: 5,
                          endIndent: 5,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              _buildSmallStat(
                                iconWidget: Image.asset(
                                  'assets/crashed_car.png',
                                  width: 52,
                                  height: 44,
                                ),
                                title: "Total accidents",
                                value: "1",
                                valColor: Colors.black,
                              ),
                              const Divider(color: Colors.white),
                              _buildSmallStat(
                                iconWidget: Image.asset(
                                  'assets/security_time.png',
                                  width: 52,
                                  height: 44,
                                  color: Colors.black,
                                ),
                                title: "Safety Score Overview",
                                value: "90%",
                                valColor: AppColor.mainRedColor,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Car Accidents",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 25),
                      _buildAccidentItem(
                        context: context,
                        id: "#0001",
                        time: "18:27",
                        date: "30-4-2026",
                        actionText: "Evaluate Accident >",
                        actionColor: AppColor.mainRedColor,
                      ),
                      const SizedBox(height: 25),
                      _buildAccidentItem(
                        context: context,
                        id: "#0001",
                        time: "19:31",
                        date: "27-6-2025",
                        actionText: "High Severity",
                        actionColor: Colors.blue,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSmallStat({
    required Widget iconWidget,
    required String title,
    required String value,
    required Color valColor,
  }) {
    return Row(
      children: [
        iconWidget,
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 11, color: Colors.black54),
            ),
            Text(
              value,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: valColor,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildCircularIndicator() {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: 70,
              height: 70,
              child: CircularProgressIndicator(
                value: 0.9,
                strokeWidth: 4,
                color: AppColor.mainRedColor,
                backgroundColor: Colors.white,
              ),
            ),
            Image.asset(
              'assets/small_car.png',
              color: Colors.black,
              width: 37.75,
              height: 21.75,
            ),
          ],
        ),
        const SizedBox(height: 8),
        const Text(
          "Looks\nGood",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _buildAccidentItem({
    required BuildContext context,
    required String id,
    required String time,
    required String date,
    required String actionText,
    required Color actionColor,
  }) {
    final String accidentKey = "${id}_$date$time";
    final String? severity = accidentSeverity[accidentKey];
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            // ignore: deprecated_member_use
            color: const Color(0xFFE58D8D).withOpacity(0.8),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Image.asset(
            'assets/traffic_jam.png',
            color: Colors.white,
            width: 38,
            height: 38,
          ),
        ),
        const SizedBox(width: 15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Car :$id",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                "$time $date",
                style: const TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => EvaluateAccident(
                  onNotificationTap: () {},
                  initialSeverity: severity,
                  onSeveritySelected: (selected) {
                    setState(() {
                      accidentSeverity[accidentKey] = selected;
                    });
                  },
                ),
              ),
            );
          },
          child: Text(
            severity ?? "Evaluate Accident >",
            style: TextStyle(
              color: severity == null
                  ? const Color(0xFF9B0D15) 
                  : Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 13,
            ),
          ),
        ),
      ],
    );
  }
}

