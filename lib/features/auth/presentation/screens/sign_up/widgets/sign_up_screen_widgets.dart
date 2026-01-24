import 'package:flutter/material.dart';

import '../../login/login_screen.dart';

Widget buildInputField({
  required String label,
  required Color labelColor,
  required Color fillColor,
  required TextEditingController controller,
  required String hint,
  TextInputType keyboardType = TextInputType.text,
  bool readOnly = false,
  VoidCallback? onTap,
  String? Function(String?)? validator, required AutovalidateMode autoValidateMode,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      buildLabel(text: label,color: labelColor),
      const SizedBox(height: 8),
      TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        readOnly: readOnly,
        onTap: onTap,
        validator: validator,
        decoration: _inputDecoration(hint: hint, fillColor: fillColor),
      ),
      const SizedBox(height: 15),
    ],
  );
}

Widget buildPasswordField({
  required String label,
  required Color labelColor,
  required Color fillColor,
  required TextEditingController controller,
  required bool isVisible,
  required VoidCallback onToggle,
  String? Function(String?)? validator,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      buildLabel(text: label,color: labelColor),
      const SizedBox(height: 8),
      TextFormField(
        controller: controller,
        obscureText: !isVisible,
        validator: validator,
        decoration: _inputDecoration(
          hint: "● ● ● ● ● ● ●",
          fillColor: fillColor,
          suffixIcon: IconButton(
            icon: Icon(
              isVisible ? Icons.visibility : Icons.visibility_off,
              color: Colors.grey[700],
            ),
            onPressed: onToggle,
          ),

        ),
      ),
      const SizedBox(height: 15),
    ],
  );
}

Widget buildLabel({
  required String text,
  required Color color,
}) => Text(
  text,
  style: TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: 14),
);

InputDecoration _inputDecoration({required String hint, Widget? suffixIcon,required Color fillColor,}) => InputDecoration(
  filled: true,
  fillColor: fillColor,
  hintText: hint,
  hintStyle: TextStyle(color: Colors.grey[600], fontSize: 14),
  suffixIcon: suffixIcon,
  contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: BorderSide.none),
);

Widget buildTermsText() => Center(
  child: Text.rich(
    TextSpan(
      text: "By continuing, you agree to\n",
      style: TextStyle(fontSize: 12, color: Colors.grey[800]),
      children: [
        TextSpan(
          text: "Terms of Use",
          style: TextStyle(color: Colors.grey[800], fontWeight: FontWeight.bold),
        ),
        const TextSpan(text: " and "),
        TextSpan(
          text: "Privacy Policy.",
          style: TextStyle(color: Colors.grey[800], fontWeight: FontWeight.bold),
        ),
      ],
    ),
    textAlign: TextAlign.center,
  ),
);

Widget buildBottomLoginText({required BuildContext context}) => Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text("Already have an account? ", style: TextStyle(color: Colors.grey[600])),
    GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const LoginScreen()),
        );
      },
      child: const Text(
        "Log In",
        style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
      ),
    ),
  ],
);