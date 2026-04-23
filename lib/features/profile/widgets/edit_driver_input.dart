import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';

class EditDriverInput extends StatelessWidget {
  const EditDriverInput({super.key,required this.label,required this.controller,this.readOnly});
  final String label;
  final bool? readOnly;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          readOnly: readOnly ?? false,
          decoration: InputDecoration(
              filled: true,
              fillColor: textFieldColor,
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide.none)
          ),
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}
