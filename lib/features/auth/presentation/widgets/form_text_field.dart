
import 'package:flutter/material.dart';
import '../../../../core/constants/global.dart';
import 'input_label.dart';
class FormTextField extends StatelessWidget {
  const FormTextField({
    super.key,
    required this.label,
    required this.controller,
    required this.hint,
    required this.validator,
    required this.readOnly,
    required this.autoValidateMode,
  });
  final String label;
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
        InputLabel(text: label,textColor: Theme.of(context).colorScheme.onSurface,),
        SizedBox(height: width * 0.021),
        TextFormField(
          controller: controller,
          readOnly: readOnly,
          validator: validator,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(color: Colors.grey),
            filled: true,
            contentPadding: EdgeInsets.symmetric(vertical: 1,horizontal: width * .052),

            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(width * .045),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        SizedBox(height: width * 0.038),
      ],
    );
  }
}
