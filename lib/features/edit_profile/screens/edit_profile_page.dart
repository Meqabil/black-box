import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'shared_widgets.dart';

class EditProfilePage extends StatefulWidget {
  final String initialName;
  final bool initialDark;
  final bool initialPush;

  const EditProfilePage({
    super.key,
    required this.initialName,
    required this.initialDark,
    required this.initialPush,
  });

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController _nameController;
  late TextEditingController _phoneController;
  late TextEditingController _emailController;

  late bool _isDark;
  late bool _pushNotifications;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.initialName);
    _phoneController = TextEditingController(text: "0123456789");
    _emailController = TextEditingController(text: "john@example.com");
    _isDark = widget.initialDark;
    _pushNotifications = widget.initialPush;
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    super.dispose();
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
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 120),
                    children: [
                      Center(
                        child: Column(
                          children: [
                            Text(_nameController.text,
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: textColor)),
                            const Text("ID: 25030024",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      Text("Account Settings",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: textColor)),
                      const SizedBox(height: 15),
                      _field(
                          "Username", _nameController, false, false, textColor),
                      _field("Phone", _phoneController, false, true, textColor),
                      _field("Email Address", _emailController, true, false,
                          textColor),
                      const SizedBox(height: 10),
                      _rowSwitch(
                          "Push Notifications",
                          _pushNotifications,
                          (v) => setState(() => _pushNotifications = v),
                          textColor),
                      _rowSwitch("Turn Dark Theme", _isDark,
                          (v) => setState(() => _isDark = v), textColor),
                      const SizedBox(height: 40),
                      Center(
                        child: SizedBox(
                          width: 180,
                          height: 45,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: kMainRed,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30))),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: const Text("Profile Updated!",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                    backgroundColor: kFieldFillColor,
                                    behavior: SnackBarBehavior.floating,
                                    margin: const EdgeInsets.all(20),
                                    duration:
                                        const Duration(milliseconds: 1500),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  ),
                                );

                                Future.delayed(
                                    const Duration(milliseconds: 1600), () {
                                  Navigator.pop(context, {
                                    'name': _nameController.text,
                                    'dark': _isDark,
                                    'push': _pushNotifications,
                                  });
                                });
                              }
                            },
                            child: const Text("Update Profile",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15)),
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
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: buildCommonBottomBar(),
      ),
    );
  }

  Widget _buildEditHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.pop(context)),
          const Text("Edit My Profile",
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

  Widget _buildEditProfileImage() {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(4),
          decoration:
              const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          child: const CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage("https://i.pravatar.cc/300")),
        ),
        Positioned(
          bottom: 5,
          right: 5,
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration:
                const BoxDecoration(color: kMainRed, shape: BoxShape.circle),
            child: const Icon(Icons.camera_alt, color: Colors.white, size: 20),
          ),
        ),
      ],
    );
  }

  Widget _field(String label, TextEditingController cont, bool isEmail,
      bool isPhone, Color txtColor) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label,
              style: TextStyle(
                  fontWeight: FontWeight.w500, fontSize: 16, color: txtColor)),
          const SizedBox(height: 10),
          TextFormField(
            controller: cont,
            style: TextStyle(color: txtColor, fontWeight: FontWeight.w400),
            keyboardType: isPhone
                ? TextInputType.number
                : (isEmail ? TextInputType.emailAddress : TextInputType.text),
            inputFormatters:
                isPhone ? [FilteringTextInputFormatter.digitsOnly] : null,
            decoration: InputDecoration(
              filled: true,
              fillColor: kFieldFillColor,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: kMainRed, width: 1)),
              errorStyle: const TextStyle(color: kMainRed),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'This field cannot be empty';
              }
              if (isEmail) {
                if (!value.contains('@') || !value.contains('.')) {
                  return 'Please enter a valid email (must contain @ and .)';
                }
              }
              if (isPhone) {
                if (value.length < 8) {
                  return 'Please enter a valid phone number';
                }
              }
              return null;
            },
          ),
        ],
      ),
    );
  }

  Widget _rowSwitch(String t, bool v, Function(bool) c, Color txtColor) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(t,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500, color: txtColor)),
        Switch(value: v, activeColor: kMainRed, onChanged: c)
      ]),
    );
  }
}
