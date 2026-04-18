
import 'package:flutter/material.dart';

import '../../../widgets/input_label.dart';
import '../../sign_up/functions/input_decoration.dart';

class FormTextField extends StatelessWidget {
  const FormTextField({
    super.key,
    required this.label,
    required this.labelColor,
    required this.fillColor,
    required this.controller,
    required this.hint,
    required this.validator,
    required this.readOnly,
    required this.autoValidateMode,
  });
  final String label;
  final Color labelColor;
  final Color fillColor;
  final TextEditingController controller;
  final String hint;
  final String? Function(String?)? validator;
  final bool readOnly;
  final AutovalidateMode autoValidateMode;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InputLabel(text: label,textColor: Colors.black,),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          readOnly: readOnly,
          validator: validator,
          decoration: inputDecoration(hint: hint, fillColor: fillColor),
        ),
        const SizedBox(height: 15),
      ],
    );;
  }
}
