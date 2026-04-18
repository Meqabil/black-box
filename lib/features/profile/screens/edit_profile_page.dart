import 'package:black_box/core/constants/colors.dart';
import 'package:black_box/features/profile/widgets/edit_driver_input.dart';
import 'package:flutter/material.dart';
import '../widgets/white_layer.dart';


class EditProfilePage extends StatefulWidget {
  final String initialName;
  final bool initialDark;
  const EditProfilePage({super.key, required this.initialName, required this.initialDark});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _nameController;
  late bool _isDark;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.initialName);
    _isDark = widget.initialDark;
  }

  @override
  Widget build(BuildContext context) {
    Color textColor = _isDark ? Colors.white : Colors.black;
    return Scaffold(
      backgroundColor: primaryRed,
      appBar: AppBar(
        backgroundColor: primaryRed,
        centerTitle: true,
        toolbarHeight: 90,
        title: Text("Edit My Profile",style:  const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
        actions: [
          const CircleAvatar(backgroundColor: Colors.white24, child: Icon(Icons.notifications_none, color: Colors.white)),
          SizedBox(width: 20,),
        ],
      ),
      extendBody: true,
      body: Stack(
        children: [
          WhiteLayer(color: Colors.white,top: 140),
          Column(
            children: [
              const SizedBox(height: 70),
              Stack(
                children: [
                  const CircleAvatar(radius: 60, backgroundColor: Colors.white, child: CircleAvatar(radius: 56, backgroundImage: NetworkImage("https://i.pravatar.cc/300"))),
                  Positioned(
                    bottom: 0, right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(6),
                      decoration: const BoxDecoration(color: primaryRed, shape: BoxShape.circle),
                      child: const Icon(Icons.camera_alt, color: Colors.white, size: 18),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Form(
                  key: _formKey,
                  child: ListView(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 100),
                    children: [
                      Center(
                        child: Column(
                          children: [
                            Text(_nameController.text, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: textColor)),
                            const Text("ID: 25030024", style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      Text("Account Settings", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: textColor)),
                      const SizedBox(height: 15),
                      EditDriverInput(controller: _nameController, label: "User Name",),
                      EditDriverInput(controller: _nameController, label: "License Number",),
                      EditDriverInput(controller: _nameController, label: "Phone",),
                      SwitchListTile(
                        title: Text("Turn Dark Theme ",
                        style: TextStyle(fontSize: 16, color: Colors.black)),
                        activeColor: mainRedColor,
                        value: true,
                        onChanged: (bool value) {

                        },
                      ),
                      const SizedBox(height: 30),
                      Center(
                        child: SizedBox(
                          width: 250, height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context, {'name': _nameController.text, 'dark': _isDark});
                            },
                            style: ElevatedButton.styleFrom(backgroundColor: primaryRed, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
                            child: const Text("Update Profile", style: TextStyle(color: Colors.white, fontSize: 18)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      //bottomNavigationBar: buildCommonBottomBar(),
    );
  }
}