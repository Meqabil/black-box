import 'package:flutter/material.dart';

import '../../../../../../core/constants/colors.dart';

InputDecoration inputDecoration({required String hint, Widget? suffixIcon}) {
  return InputDecoration(
    filled: true,
    hintText: hint,
    hintStyle: TextStyle(color: Colors.grey[600], fontSize: 14),
    suffixIcon: suffixIcon,
    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide.none,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide.none,
    ),
  );
}