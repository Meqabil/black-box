import 'package:flutter/material.dart';

import '../functions/input_decoration.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({super.key,required this.controller,required this.isPasswordVisible,required this.textFieldColor,required this.validator,required this.autoValidateMode,required this.onPressed});
  final TextEditingController controller;
  final bool isPasswordVisible;
  final Color textFieldColor;
  final void Function()? onPressed;
  final String? Function(String?)? validator;
  final AutovalidateMode? autoValidateMode;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: !isPasswordVisible,
      validator: validator,
      autovalidateMode: autoValidateMode,
      decoration: inputDecoration(
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
    );;
  }
}
