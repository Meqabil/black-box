import 'package:flutter/material.dart';
import 'shared_widgets.dart';
import 'NotificationSettingsPage.dart';

class SettingsPage extends StatefulWidget {
  final bool isDark;
  final bool pushEnabled;

  const SettingsPage({
    super.key,
    required this.isDark,
    required this.pushEnabled,
  });

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  late bool _currentPush;

  @override
  void initState() {
    super.initState();
    _currentPush = widget.pushEnabled;
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
                    _buildOptionTile(
                      icon: Icons.notifications,
                      title: "Notification Settings",
                      textColor: textColor,
                      onTap: () async {
                        final result = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NotificationSettingsPage(
                              isDark: widget.isDark,
                              initialPush: _currentPush,
                            ),
                          ),
                        );

                        if (result != null && result is bool) {
                          setState(() => _currentPush = result);
                        }
                      },
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
          const Text("Settings",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold)),
          const CircleAvatar(
              backgroundColor: Colors.white24,
              child: Icon(Icons.notifications_none, color: Colors.white)),
        ],
      ),
    );
  }

  Widget _buildOptionTile(
      {required IconData icon,
      required String title,
      required Color textColor,
      required VoidCallback onTap}) {
    return ListTile(
      onTap: onTap,
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration:
            const BoxDecoration(color: kMainRed, shape: BoxShape.circle),
        child: Icon(icon, color: Colors.white, size: 24),
      ),
      title: Text(title,
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: textColor)),
      trailing: Icon(Icons.arrow_forward_ios,
          size: 18, color: textColor.withOpacity(0.5)),
    );
  }
}
