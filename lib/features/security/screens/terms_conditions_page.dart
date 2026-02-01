import 'package:flutter/material.dart';
import 'shared_widgets.dart';

class TermsConditionsPage extends StatelessWidget {
  final bool isDark; // 1. إضافة متغير حالة الثيم
  const TermsConditionsPage(
      {super.key, required this.isDark}); // 2. تحديث الـ Constructor

  @override
  Widget build(BuildContext context) {
    // 3. تعريف الألوان بناءً على حالة الثيم
    Color bgColor = isDark ? kNavyBlue : Colors.white;
    Color textColor = isDark ? Colors.white : Colors.black;
    Color subTextColor = isDark ? Colors.white70 : Colors.black87;

    return Scaffold(
      backgroundColor: kMainRed,
      extendBody: true,
      body: Stack(
        children: [
          // الطبقة الخلفية تتغير حسب الثيم
          buildWhiteLayer(bgColor, 130),

          Positioned(
            top: 130,
            left: 0,
            right: 0,
            bottom: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(60),
                topRight: Radius.circular(60),
              ),
              child: ListView(
                padding: const EdgeInsets.fromLTRB(25, 40, 25, 120),
                children: [
                  Text(
                    "Terms And Conditions",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: textColor, // اللون الأساسي للنص
                    ),
                  ),
                  const SizedBox(height: 25),
                  _buildSectionTitle("1. Acceptance of Terms"),
                  _buildSectionBody(
                      "By installing or revealing this application, you agree to these Terms and Conditions. If you do not agree, please discontinue use of the app.",
                      subTextColor),
                  _buildSectionTitle("2. Purpose of the Application"),
                  _buildSectionBody(
                      "This application is a vehicle black box and telematics system used to monitor vehicle performance and driving behavior for informational, safety, and analytical purposes only.",
                      subTextColor),
                  _buildSectionTitle("3. Data Parameters Collected"),
                  _buildSectionBody(
                      "The application may collect and process vehicle and driving data, including but not limited to:",
                      subTextColor),
                  _buildBulletPoint("Vehicle speed", textColor),
                  _buildBulletPoint(
                      "Fuel consumption and fuel level", textColor),
                  _buildBulletPoint("Acceleration and deceleration", textColor),
                  _buildBulletPoint(
                      "Harsh braking and rapid acceleration events", textColor),
                  _buildBulletPoint("Sharp cornering", textColor),
                  _buildBulletPoint(
                      "GPS location data (latitude and longitude)", textColor),
                  _buildBulletPoint(
                      "Trip distance, duration, and time", textColor),
                  _buildBulletPoint(
                      "Driver and vehicle identification data", textColor),
                  const SizedBox(height: 15),
                  _buildSectionBody(
                      "By using the app, you explicitly consent to the collection of these parameters.",
                      subTextColor),
                  _buildSectionTitle("4. Service Availability"),
                  _buildSectionBody(
                      "Continuous, real-time, or error-free operation of the app is not guaranteed due to technical limitations.",
                      subTextColor),
                ],
              ),
            ),
          ),

          // الهيدر الثابت (يظل أبيض فوق الخلفية الحمراء)

          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 130,
              padding: const EdgeInsets.only(
                  top: 35), // تعديل الارتفاع كما طلبته سابقاً
              child: _buildHeader(context, "Terms And Conditions"),
            ),
          ),
        ],
      ),
      bottomNavigationBar: buildCommonBottomBar(),
    );
  }

  // العناوين تظل باللون الأحمر لتمييز الفقرات
  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 8),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: kMainRed,
        ),
      ),
    );
  }

  // تعديل الـ Body لاستقبال اللون المتغير
  Widget _buildSectionBody(String text, Color color) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: color,
        height: 1.4,
      ),
    );
  }

  // تعديل الـ Bullet لاستقبال اللون المتغير
  Widget _buildBulletPoint(String text, Color color) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("• ",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 18, color: kMainRed)),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  height: 1.4,
                  color: color),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.pop(context),
          ),
          Text(
            title,
            style: const TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const CircleAvatar(
            backgroundColor: Colors.white24,
            child: Icon(Icons.notifications_none, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
