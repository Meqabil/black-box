import 'package:flutter/material.dart';

import '../../password/forget_password_screen.dart';
import '../../sign_up/signup_screen.dart';

Widget buildLabel({
  required String text,
  required Color textColor,
}) => Text(
  text,
  style: TextStyle(
    color: textColor,
    fontWeight: FontWeight.bold,
    fontSize: 14,
  ),
);

Widget buildTextField({
  required String hint,
  required TextEditingController controller,
  required Color textFieldColor,
  String? Function(String?)? validator,
  AutovalidateMode? autovalidateMode,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      validator: validator,
      autovalidateMode: autovalidateMode,
      decoration: _inputDecoration(hintText: hint, errorMaxLines: 2, textFieldColor: textFieldColor),
    );

Widget buildPasswordField({
  required TextEditingController controller,
  required bool isPasswordVisible,
  required Color textFieldColor,
  required  void Function()? onPressed,
  String? Function(String?)? validator,
  AutovalidateMode? autoValidateMode,
}) =>
    TextFormField(
      controller: controller,
      obscureText: !isPasswordVisible,
      validator: validator,
      autovalidateMode: autoValidateMode,
      decoration: _inputDecoration(
        hintText: "● ● ● ● ● ● ●",
        textFieldColor: textFieldColor,
        suffixIcon: IconButton(
          icon: Icon(
            isPasswordVisible ? Icons.visibility : Icons.visibility_off_outlined,
            color: Colors.brown[400],
          ),
          onPressed: onPressed,
        ),
        errorMaxLines: 2,
      ),
    );

InputDecoration _inputDecoration({String? hintText, Widget? suffixIcon, int errorMaxLines = 2,required Color textFieldColor}) =>
    InputDecoration(
      filled: true,
      fillColor: textFieldColor,
      hintText: hintText,
      hintStyle: TextStyle(color: Colors.grey[600], fontSize: 14),
      suffixIcon: suffixIcon,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide.none,
      ),
      errorMaxLines: errorMaxLines,
    );

Widget buildLoginButton({required BuildContext context,required void Function()? onPressed,required Color backgroundColor}) => Center(
  child: SizedBox(
    width: 250,
    height: 50,
    child: ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        elevation: 2,
      ),
      child: const Text(
        "Log In",
        style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
      ),
    ),
  ),
);

Widget buildForgotPassword({required BuildContext context}) => Center(
  child: TextButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ForgotPasswordScreen()),
      );
    },
    child: const Text(
      "Forgot Password?",
      style: TextStyle(color: Color(0xFF004D40), fontWeight: FontWeight.bold),
    ),
  ),
);

Widget buildBottomRegisterText({required BuildContext context}) => Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text("Don't have an account? ", style: TextStyle(color: Colors.grey[600])),
    GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const SignupScreen()));
      },
      child: const Text(
        "Sign Up",
        style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
      ),
    ),
  ],
);
