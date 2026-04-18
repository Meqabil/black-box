import 'package:flutter/material.dart';

import '../../../widgets/input_label.dart';
import '../../sign_up/functions/input_decoration.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({
    super.key,
    required this.label,
    required this.labelColor,
    required this.fillColor,
    required this.controller,
    required this.isVisible,
    required this.onToggle,
    required this.validator,
  });

  final String label;
  final Color labelColor;
  final Color fillColor;
  final TextEditingController controller;
  final bool isVisible;
  final VoidCallback onToggle;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InputLabel(text: label, textColor: labelColor,),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          obscureText: !isVisible,
          validator: validator,
          decoration: inputDecoration(
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
}
