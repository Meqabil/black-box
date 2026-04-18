import 'package:black_box/core/constants/colors.dart';
import 'package:black_box/core/constants/global.dart';
import 'package:black_box/features/auth/domain/entities/owner_entity.dart';
import 'package:black_box/features/auth/presentation/screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import '../widgets/white_layer.dart';
import 'edit_profile_page.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key,required this.owner,required this.onNotificationTap});
  final OwnerEntity owner;
  final void Function()? onNotificationTap;
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}


class _ProfilePageState extends State<ProfilePage> {
  String currentUserName = "John Smith";
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryRed,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: primaryRed,
        centerTitle: true,
        toolbarHeight: 90,
        title: Text("Profile",style:  const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
        actions: [
          InkWell(
            onTap: widget.onNotificationTap,
            child: const CircleAvatar(backgroundColor: Colors.white24, child: Icon(Icons.notifications_none, color: Colors.white))
          ),
          SizedBox(width: 20,),
        ],
      ),
      body: Stack(
        children: [
          WhiteLayer(color:Colors.white, top: 140),
          Column(
            children: [
              const SizedBox(height: 50),
              _buildUserImage(widget.owner.profileImage),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.fromLTRB(30, 10, 30, 100),
                  children: [
                    Center(
                      child: Column(
                        children: [
                          Text(widget.owner.name, style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: textColor)),
                          Text("ID : ${widget.owner.id.toString()}", style: TextStyle(color: Colors.grey, fontSize: 14)),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                    _buildNavButton(Icons.person_outline, "Edit Profile", const Color(0xFFE57373), textColor, () async {
                      final result = await Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EditProfilePage(
                          initialName: currentUserName,
                          initialDark: isDarkMode,
                        )),
                      );
                      if (result != null) {
                        setState(() {
                          currentUserName = result['name'];
                          isDarkMode = result['dark'];
                        });
                      }
                    }),
                    _buildNavButton(Icons.shield_outlined, "Security", const Color(0xFF4FC3F7), textColor, () {}),
                    _buildNavButton(Icons.settings_outlined, "Setting", primaryRed, textColor, () {}),
                    _buildNavButton(Icons.help_outline, "Help", const Color(0xFFE57373), textColor, () {}),
                    _buildNavButton(Icons.logout, "Logout", const Color(0xFF4FC3F7), textColor, () {
                      pref!.remove("login_state");
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LoginScreen())
                      );
                    }),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      //bottomNavigationBar: buildCommonBottomBar(),
    );
  }



  Widget _buildUserImage(String? link) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
      child: CircleAvatar(radius: 60, backgroundImage: (link == '' || link == null) ? NetworkImage("https://i.pravatar.cc/300") : NetworkImage("https://black-box-fdgsfrb2a8cqa5be.germanywestcentral-01.azurewebsites.net/storage/$link")),
    );
  }

  Widget _buildNavButton(IconData icon, String title, Color iconBg, Color txtColor, VoidCallback tap) {
    return GestureDetector(
      onTap: tap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          children: [
            Container(
              width: 50, height: 50,
              decoration: BoxDecoration(color: iconBg, borderRadius: BorderRadius.circular(15)),
              child: Icon(icon, color: Colors.white),
            ),
            const SizedBox(width: 20),
            Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: txtColor)),
          ],
        ),
      ),
    );
  }
}