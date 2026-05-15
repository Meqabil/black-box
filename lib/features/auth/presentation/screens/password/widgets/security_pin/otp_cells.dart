import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import '../../../../../../../core/theme/app_color.dart';
import '../../../../../../../core/constants/global.dart';


class OtpCells extends StatelessWidget {
  const OtpCells({super.key, this.onSubmit});

  final void Function(String)? onSubmit;

  @override
  Widget build(BuildContext context) {
    return OtpTextField(

      contentPadding: EdgeInsets.all(0),
      numberOfFields: 6, // 👈 change based on your OTP length
      borderRadius: BorderRadius.circular(90),
      fieldWidth: width * .096,
      fieldHeight: width * .096,
      margin: EdgeInsets.only(left: width * .04),
      textStyle: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: Theme.of(context).colorScheme.onSurface,
      ),
      keyboardType: TextInputType.number,
      showFieldAsBox: true,
      focusedBorderColor: Theme.of(context).colorScheme.primary,
      borderWidth: width * .0081,
      enabledBorderColor: Colors.grey,


      onSubmit: onSubmit,
    );
  }
}