import 'package:flutter/material.dart';
import 'shared_widgets.dart';

class NotificationSettingsPage extends StatefulWidget {
  final bool isDark;
  final bool initialPush;

  const NotificationSettingsPage(
      {super.key, required this.isDark, required this.initialPush});

  @override
  State<NotificationSettingsPage> createState() =>
      _NotificationSettingsPageState();
}

class _NotificationSettingsPageState extends State<NotificationSettingsPage> {
  late bool _currentPush;

  @override
  void initState() {
    super.initState();
    _currentPush = widget.initialPush;
  }

  @override
  Widget build(BuildContext context) {
    Color bgColor = widget.isDark ? kNavyBlue : Colors.white;
    Color textColor = widget.isDark ? Colors.white : Colors.black;

    return Scaffold(
      backgroundColor: kMainRed,
      extendBody: true,
      body: Stack(
        children: [
          buildWhiteLayer(bgColor, 130),
          Column(
            children: [
              const SizedBox(height: 50),
              _buildHeader(context),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.fromLTRB(30, 80, 30, 100),
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("General Notification",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: textColor)),
                        Switch(
                          value: _currentPush,
                          activeColor: kMainRed,
                          onChanged: (value) =>
                              setState(() => _currentPush = value),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: buildCommonBottomBar(),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.pop(context, _currentPush),
          ),
          const Text("Notification Settings",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          const CircleAvatar(
              backgroundColor: Colors.white24,
              child: Icon(Icons.notifications_none, color: Colors.white)),
        ],
      ),
    );
  }
}
