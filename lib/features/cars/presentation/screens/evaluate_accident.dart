import 'package:flutter/material.dart';
import '../../../auth/presentation/screens/hom-e/notification.dart';

class EvaluateAccident extends StatefulWidget {
  final VoidCallback onNotificationTap;
  final Function(String severity) onSeveritySelected;
  final String? initialSeverity;

  const EvaluateAccident({
    super.key,
    required this.onNotificationTap,
    required this.onSeveritySelected,
    this.initialSeverity,
  });

  @override
  State<EvaluateAccident> createState() => _EvaluateAccidentState();
}

class _EvaluateAccidentState extends State<EvaluateAccident> {
  final Color mainred = const Color(0xFF9B0D15);
  final Color white = const Color(0xFFFFFFFF);
  final Color cardPink = const Color(0xFFFDE8E8);

  int selectedIndex = -1;

  @override
  void initState() {
    super.initState();

    if (widget.initialSeverity == "High Severity") {
      selectedIndex = 0;
    } else if (widget.initialSeverity == "Moderate Severity") {
      selectedIndex = 1;
    } else if (widget.initialSeverity == "Low Severity") {
      selectedIndex = 2;
    }
  }

  final List<Map<String, dynamic>> severityDetails = [
    {
      "title": " Critical/ High risk",
      "points": [
        " Severe collision  ",
        "Airbag deployed",
        "Vehicle rollover",
        "Very high G-force",
        "Major vehicle damage",
      ],
      "icon": "assets/alert.png",
    },
    {
      "title": "  Moderate/ Significant",
      "points": [
        "Moderate collision",
        "Medium G-force detected",
        "Bumper damage",
        "Scratches",
        "Small dents",
        "Side mirror damage",
        "Cracked headlight / taillight",
      ],
      "icon": "assets/alert.png",
    },
    {
      "title": " Lowl/ Minor risk",
      "points": [
        "Minor impact",
        "Small vibration / shock",
        "Light scratches",
        "Paint marks / scuffs",
        "No dents",
        "No visible damage",
      ],
      "icon": "assets/alert.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainred,
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
                    builder: (context) => NotificationScreen(
                      onBackToHome: () {
                        Navigator.pop(context);
                      },
                    ),
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
                color: cardPink,
                borderRadius: BorderRadius.circular(35),
              ),
              child: IntrinsicHeight(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: cardPink,
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
                                valColor: mainred,
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
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  children: [
                    const Text(
                      "Accident Severity Evaluation",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF9B0D15),
                      ),
                    ),
                    const SizedBox(height: 30),
                    _buildSeverityOption("High Severity", Colors.red, 0),
                    const SizedBox(height: 15),
                    _buildSeverityOption("Moderate Severity", Colors.orange, 1),
                    const SizedBox(height: 15),
                    _buildSeverityOption("Low Severity", Colors.green, 2),
                    const Spacer(),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: mainred,
                        minimumSize: const Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      onPressed: () {
                        String selectedSeverityText = "";
                        if (selectedIndex == 0) {
                          selectedSeverityText = "High Severity";
                        } else if (selectedIndex == 1)
                          // ignore: curly_braces_in_flow_control_structures
                          selectedSeverityText = "Moderate Severity";
                        else if (selectedIndex == 2)
                          // ignore: curly_braces_in_flow_control_structures
                          selectedSeverityText = "Low Severity";

                        if (selectedSeverityText.isNotEmpty) {
                          widget.onSeveritySelected(selectedSeverityText);
                          Navigator.pop(context);
                        }
                      },

                      child: const Text(
                        "Confirm Selection",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSeverityOption(String title, Color dotColor, int index) {
    bool isSelected = selectedIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: const Color(0xFFFDE8E8),
          borderRadius: BorderRadius.circular(15),
          border: isSelected ? Border.all(color: mainred, width: 2) : null,
        ),
        child: Row(
          children: [
            Icon(Icons.circle, color: dotColor, size: 12),
            const SizedBox(width: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF9B0D15),
              ),
            ),
            const Spacer(),
            TextButton(
              onPressed: () {
                final details = severityDetails[index];
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      contentPadding: EdgeInsets.all(20),
                      content: SizedBox(
                        width: 342,
                        height: 250,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(details["icon"], width: 30, height: 30),
                            const SizedBox(width: 15),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    details["title"],
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF9B0D15),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  ...List.generate(
                                    (details["points"] as List<String>).length,
                                    (i) => Padding(
                                      padding: const EdgeInsets.only(bottom: 5),
                                      child: Text(
                                        "• ${(details["points"] as List<String>)[i]}",
                                        style: const TextStyle(fontSize: 14),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text("OK"),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text(
                "learn more",
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
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
                color: mainred,
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
}

