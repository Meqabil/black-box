import 'package:flutter/material.dart';
import 'package:flutter_app/hom-e/notification.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({super.key});

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  final Color primaryRed = const Color(0xFF8B0012);
  final Color white = const Color(0xFFFFFFFF);
  final Color cardPink = const Color(0xFFFDE8E8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: primaryRed,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi, Welcome Back",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Good Morning",
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(6),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const NotificationScreen(),
                              ),
                            );
                          },
                          child: Icon(
                            Icons.notifications_none,
                            color: primaryRed,
                            size: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      _buildStatItem("Total Active Cars", "1", Colors.white,
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
                  const SizedBox(height: 20),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 69,
                          height: 35,
                          decoration: BoxDecoration(
                            color: const Color(0xFF052224),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            "12.5%",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      Icon(
                        Icons.check_box_outlined,
                        color: Colors.white,
                        size: 18,
                      ),
                      SizedBox(width: 8),
                      Text(
                        "12% Of Your Cars Are Active.",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    children: [
                      Container(
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
                                        'assets/Crashed_Car.png',
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
                                        'assets/Security_Time.png',
                                        width: 52,
                                        height: 44,
                                        color: Colors.black,
                                      ),
                                      title: "Safety Score Overview",
                                      value: "90%",
                                      valColor: primaryRed,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Column(
                          children: [
                            Text(
                              "Active Hardware Alerts",
                              style: TextStyle(
                                color: Color(0xFF8B0012),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "--No Hardware Alerts--",
                              style: TextStyle(color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Image.asset(
                        'assets/car.png',
                        height: 180,
                        errorBuilder: (context, error, stackTrace) =>
                            const Icon(
                              Icons.directions_car,
                              size: 100,
                              color: Colors.grey,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
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
              width: 20,
              height: 20,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Transform.rotate(
                angle: arrowAngle * 3.1416 / 180, // تحويل درجة لراديان
                child: const Icon(
                  Icons.arrow_back_outlined,
                  size: 16,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(width: 5),
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
                value: 0.5,
                strokeWidth: 4,
                color: primaryRed,
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
}
