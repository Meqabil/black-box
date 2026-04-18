import 'package:flutter/material.dart';

import '../../../../../../core/constants/colors.dart';
import '../functions/input_decoration.dart';

class FormTextField extends StatelessWidget {
  const FormTextField({super.key,required this.controller,required this.validator,required this.autoValidateMode,required this.hint, required textFieldColor});
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final AutovalidateMode autoValidateMode;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      validator: validator,
      autovalidateMode: autoValidateMode,
      decoration: inputDecoration(hintText: hint, errorMaxLines: 2, textFieldColor: textFieldColor),
    );
  }
}
