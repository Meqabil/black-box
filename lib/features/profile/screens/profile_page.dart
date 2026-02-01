import 'package:flutter/material.dart';
import 'shared_widgets.dart';
import 'edit_profile_page.dart';
import 'security_page.dart';
import 'SettingsPage.dart';
import 'help_faq_page.dart';
import 'logout_dialog.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String currentUserName = "John Smith";
  bool isDarkMode = false;
  bool isPushEnabled = true;

  @override
  Widget build(BuildContext context) {
    Color bgColor = isDarkMode ? kNavyBlue : Colors.white;
    Color textColor = isDarkMode ? Colors.white : Colors.black;

    return Scaffold(
      backgroundColor: kMainRed,
      extendBody: true,
      body: Stack(
        children: [
          buildWhiteLayer(bgColor, 200),
          Column(
            children: [
              const SizedBox(height: 50),
              _buildTopNav("Profile", false),
              const SizedBox(height: 20),
              _buildUserImage(),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.fromLTRB(30, 10, 30, 100),
                  children: [
                    Center(
                      child: Column(
                        children: [
                          Text(currentUserName,
                              style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                  color: textColor)),
                          const Text("ID: 25030024",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14)),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                    _buildNavButton(Icons.person_outline, "Edit Profile",
                        const Color(0xFFE57373), textColor, () async {
                      final result = await Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EditProfilePage(
                                  initialName: currentUserName,
                                  initialDark: isDarkMode,
                                  initialPush: isPushEnabled,
                                )),
                      );
                      if (result != null) {
                        setState(() {
                          currentUserName = result['name'];
                          isDarkMode = result['dark'];
                          isPushEnabled = result['push'];
                        });
                      }
                    }),
                    _buildNavButton(Icons.shield_outlined, "Security",
                        const Color(0xFF4FC3F7), textColor, () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                SecurityPage(isDark: isDarkMode)),
                      );
                    }),
                    _buildNavButton(
                        Icons.settings_outlined, "Setting", kMainRed, textColor,
                        () async {
                      final result = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SettingsPage(
                            isDark: isDarkMode,
                            pushEnabled: isPushEnabled,
                          ),
                        ),
                      );

                      if (result != null && result is bool) {
                        setState(() {
                          isPushEnabled = result;
                        });
                      }
                    }),
                    _buildNavButton(Icons.help_outline, "Help",
                        const Color(0xFFE57373), textColor, () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HelpFAQPage(isDark: isDarkMode),
                        ),
                      );
                    }),
                    _buildNavButton(Icons.logout, "Logout",
                        const Color(0xFF4FC3F7), textColor, () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return LogoutDialog(isDark: isDarkMode);
                          });
                    }),
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

  Widget _buildTopNav(String title, bool canBack) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.arrow_back,
                color: canBack ? Colors.white : Colors.transparent),
            Text(title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            const CircleAvatar(
                backgroundColor: Colors.white24,
                child: Icon(Icons.notifications_none, color: Colors.white)),
          ],
        ),
      );

  Widget _buildUserImage() => Container(
        padding: const EdgeInsets.all(4),
        decoration:
            const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
        child: const CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage("https://i.pravatar.cc/300")),
      );

  Widget _buildNavButton(IconData icon, String title, Color iconBg,
      Color txtColor, VoidCallback tap) {
    return GestureDetector(
      onTap: tap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  color: iconBg, borderRadius: BorderRadius.circular(15)),
              child: Icon(icon, color: Colors.white),
            ),
            const SizedBox(width: 20),
            Text(title,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: txtColor)),
            const Spacer(),
            //Icon(Icons.arrow_forward_ios,
            //   size: 16, color: txtColor.withOpacity(0.3)),
          ],
        ),
      ),
    );
  }
}
