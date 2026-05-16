import 'package:flutter/material.dart';

class EditOwnerInput extends StatelessWidget {
  const EditOwnerInput({super.key,required this.label,required this.controller,this.readOnly});
  final String label;
  final bool? readOnly;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.onSurface)),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          readOnly: readOnly ?? false,
          decoration: InputDecoration(
              filled: true,
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide.none)
          ),
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}
