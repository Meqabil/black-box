import 'package:flutter/material.dart';
import 'shared_widgets.dart';

class LogoutDialog extends StatelessWidget {
  final bool isDark;

  const LogoutDialog({super.key, required this.isDark});

  @override
  Widget build(BuildContext context) {
    Color dialogBg = isDark ? kNavyBlue : Colors.white;
    Color titleColor = isDark ? Colors.white : kMainRed;
    Color subTitleColor = isDark ? Colors.white70 : Colors.black87;

    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: dialogBg,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Log Out",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: titleColor,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              "Are you sure you want to log out?",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal, // Smooth text
                color: subTitleColor,
              ),
            ),
            const SizedBox(height: 30),
            _buildDialogButton(
              text: "Yes",
              bgColor: kMainRed,
              textColor: Colors.white,
              onTap: () {
                Navigator.pop(context);
                print("User Logged Out");
              },
            ),
            const SizedBox(height: 12),
            _buildDialogButton(
              text: "Cancel",
              bgColor: kFieldFillColor,
              textColor: kMainRed,
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDialogButton({
    required String text,
    required Color bgColor,
    required Color textColor,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(25),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
