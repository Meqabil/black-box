import 'package:flutter/material.dart';

class DialogueInput extends StatelessWidget {
  const DialogueInput({
    super.key,
    this.hint,
    this.readOnly,
    required this.controller,
    this.validator,
  });
  final TextEditingController controller;
  final String? hint;
  final bool? readOnly;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      width: double.infinity,
      constraints: BoxConstraints(minHeight: 50,maxHeight: 55),
      padding: EdgeInsets.symmetric(horizontal: 1,vertical: 4),
      child: TextFormField(
        readOnly: readOnly ?? false,
        controller: controller,
        validator: validator,
        decoration: InputDecoration(
          constraints: BoxConstraints(maxHeight: 55,minHeight: 50),
          hintText: hint ?? "",
          hintStyle: TextStyle(fontSize: 13),
          filled: true,
          fillColor: const Color(0xFFF8DADA),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(90),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 20,
          ),
        ),
      ),
    );
  }
}


