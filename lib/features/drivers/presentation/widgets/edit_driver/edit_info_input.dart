import 'package:flutter/material.dart';

class EditInfoInput extends StatelessWidget {
  const EditInfoInput({
    super.key,
    required this.hint,
    required this.controller,
    this.validator,
    this.readOnly,
  });

  final String hint;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final bool? readOnly;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      child: TextFormField(
        controller: controller,
        validator: validator,
        readOnly: readOnly ?? false,
        style: TextStyle(
            color: readOnly == true ? Colors.white : Colors.black
        ),
        decoration: InputDecoration(
          hintText: hint,
          filled: true,
          fillColor: readOnly == true ? Colors.grey.shade500: Color(0xFFF8DADA) ,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(90),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 18,
            horizontal: 20,
          ),
        ),
      ),
    );
  }
}
