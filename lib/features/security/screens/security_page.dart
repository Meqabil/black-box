import 'package:flutter/material.dart';
import 'shared_widgets.dart';
import 'terms_conditions_page.dart';
import 'change_pin_page.dart';

class SecurityPage extends StatelessWidget {
  final bool isDark;
  const SecurityPage({super.key, required this.isDark});

  @override
  Widget build(BuildContext context) {
    Color textColor = isDark ? Colors.white : Colors.black;
    Color bgColor = isDark ? kNavyBlue : Colors.white;

    return Scaffold(
      backgroundColor: kMainRed,
      extendBody: true,
      body: Stack(
        children: [
          buildWhiteLayer(bgColor, 130),
          Column(
            children: [
              const SizedBox(height: 50),
              _buildHeader(context, "Security"),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.fromLTRB(35, 80, 35, 100),
                  children: [
                    Text("Security",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: textColor)),
                    const SizedBox(height: 40),
                    _buildOption(
                        context,
                        "Change Pin",
                        textColor,
                        () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ChangePinPage(isDark: isDark)))),
                    _buildOption(
                        context,
                        "Terms And Conditions",
                        textColor,
                        () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    TermsConditionsPage(isDark: isDark)))),
                  ],
                ),
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: buildCommonBottomBar(),
    );
  }

  Widget _buildHeader(BuildContext context, String title) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.pop(context)),
            Text(title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold)),
            const CircleAvatar(
                backgroundColor: Colors.white24,
                child: Icon(Icons.notifications_none, color: Colors.white)),
          ],
        ),
      );

  Widget _buildOption(BuildContext context, String title, Color color,
          VoidCallback onTap) =>
      Column(
        children: [
          ListTile(
            onTap: onTap,
            contentPadding: EdgeInsets.zero,
            title: Text(title,
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.w500, color: color)),
            trailing: Icon(Icons.arrow_forward_ios, size: 18, color: color),
          ),
          Divider(color: color.withOpacity(0.1)),
        ],
      );
}
