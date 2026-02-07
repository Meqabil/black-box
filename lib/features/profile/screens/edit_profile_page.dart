import 'package:flutter/material.dart';

import 'shared_widgets.dart';
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
    Color bgColor = _isDark ? kNavyBlue : Colors.white;
    Color textColor = _isDark ? Colors.white : Colors.black;

    return Scaffold(
      backgroundColor: kMainRed,
      extendBody: true,
      body: Stack(
        children: [
          buildWhiteLayer(bgColor, 200),
          Column(
            children: [
              const SizedBox(height: 50),
              _buildEditHeader(),
              const SizedBox(height: 20),
              _buildEditProfileImage(),
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
                      _field("Username", _nameController, textColor),
                      _rowSwitch("Turn Dark Theme", _isDark, (v) => setState(() => _isDark = v), textColor),
                      const SizedBox(height: 30),
                      Center(
                        child: SizedBox(
                          width: 250, height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context, {'name': _nameController.text, 'dark': _isDark});
                            },
                            style: ElevatedButton.styleFrom(backgroundColor: kMainRed, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
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

  Widget _buildEditHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(icon: const Icon(Icons.arrow_back, color: Colors.white), onPressed: () => Navigator.pop(context)),
          const Text("Edit My Profile", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
          const CircleAvatar(backgroundColor: Colors.white24, child: Icon(Icons.notifications_none, color: Colors.white)),
        ],
      ),
    );
  }
  Widget _buildEditProfileImage() {
    return Stack(
      children: [
        const CircleAvatar(radius: 60, backgroundColor: Colors.white, child: CircleAvatar(radius: 56, backgroundImage: NetworkImage("https://i.pravatar.cc/300"))),
        Positioned(
          bottom: 0, right: 0,
          child: Container(
            padding: const EdgeInsets.all(6),
            decoration: const BoxDecoration(color: kMainRed, shape: BoxShape.circle),
            child: const Icon(Icons.camera_alt, color: Colors.white, size: 18),
          ),
        ),
      ],
    );
  }

  Widget _field(String label, TextEditingController cont, Color txtColor) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontWeight: FontWeight.bold, color: txtColor)),
        const SizedBox(height: 8),
        TextFormField(
          controller: cont,
          decoration: InputDecoration(
            filled: true, fillColor: kFieldFillColor, 
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide.none)
          ),
        ),
        const SizedBox(height: 15),
      ],
    );
  }

  Widget _rowSwitch(String t, bool v, Function(bool) c, Color txtColor) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween, 
      children: [
        Text(t, style: TextStyle(fontSize: 16, color: txtColor)), 
        Switch(value: v, activeColor: kMainRed, onChanged: c)
      ]);
  }
}