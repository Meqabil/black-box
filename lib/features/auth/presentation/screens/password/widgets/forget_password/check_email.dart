import 'package:flutter/material.dart';

import '../../../functions/is_valid_gmail.dart';
import '../../../password/functions/input_decoration.dart';

class CheckEmail extends StatefulWidget {
  CheckEmail({super.key,required this.emailController,required this.onChanged,required this.emailError});
  TextEditingController emailController;
  final void Function(String)? onChanged;
  final String? emailError;

  @override
  State<CheckEmail> createState() => _CheckEmailState();
}

class _CheckEmailState extends State<CheckEmail> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.emailController,
      onChanged: widget.onChanged,
      decoration: inputDecoration(
        hint: "example@gmail.com",
      ).copyWith(
        errorText: widget.emailError,
      ),
    );
  }
}
