import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import '../../../../../../../core/constants/colors.dart';


class OtpCells extends StatelessWidget {
  const OtpCells({super.key, this.onSubmit});

  final void Function(String)? onSubmit;

  @override
  Widget build(BuildContext context) {
    return OtpTextField(

      numberOfFields: 6, // 👈 change based on your OTP length
      borderRadius: BorderRadius.circular(90),
      fieldWidth: 50,
      fieldHeight: 50,
      alignment: Alignment.topLeft,
      textStyle: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: mainRedColor,
      ),
      keyboardType: TextInputType.number,
      showFieldAsBox: true,

      focusedBorderColor: mainRedColor,
      enabledBorderColor: Colors.grey,


      onSubmit: onSubmit,
    );
  }
}