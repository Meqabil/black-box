import 'package:flutter/material.dart';
import '../../../../../../../core/constants/colors.dart';

class NewPasswordField extends StatelessWidget {
  const NewPasswordField({super.key,required this.label,required this.onToggle,required this.obscure,required this.controller,required this.validator});
  final String label;
  final TextEditingController controller;
  final bool obscure;
  final VoidCallback onToggle;
  final String? Function(String?) validator;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontWeight: FontWeight.w600,color: Theme.of(context).colorScheme.onSurface)),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          obscureText: obscure,
          validator: validator,

          decoration: InputDecoration(
            hintText: "● ● ● ● ● ● ●",
            hintStyle: TextStyle(color: Colors.grey),
            filled: true,

            suffixIcon: IconButton(
              icon: Icon(obscure ? Icons.visibility_off : Icons.visibility),
              onPressed: onToggle,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }
}
