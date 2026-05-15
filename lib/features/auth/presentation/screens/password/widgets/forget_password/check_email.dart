import 'package:flutter/material.dart';

import '../../../../../../../core/constants/global.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
      keyboardType: TextInputType.emailAddress,
      controller: widget.emailController,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        hintText: AppLocalizations.of(context)!.email_hint,
        hintStyle: TextStyle(color: Colors.grey),
        filled: true,
        contentPadding: EdgeInsets.symmetric(vertical: 1,horizontal: width * .052),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(width * .045),
          borderSide: BorderSide.none,
        ),
      ).copyWith(
        errorText: widget.emailError,
      ),
    );
  }
}
