
import 'package:flutter/material.dart';

InputDecoration inputDecoration({String? hintText, Widget? suffixIcon, int errorMaxLines = 2,required Color textFieldColor}) =>
    InputDecoration(
      filled: true,
      fillColor: textFieldColor,
      hintText: hintText,
      hintStyle: TextStyle(color: Colors.grey[600], fontSize: 14),
      suffixIcon: suffixIcon,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide.none,
      ),
      errorMaxLines: errorMaxLines,
    );
