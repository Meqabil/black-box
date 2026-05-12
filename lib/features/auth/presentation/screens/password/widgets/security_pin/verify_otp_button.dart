import 'package:flutter/material.dart';
import '../../../../../../../core/constants/colors.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class VerifyOtpButton extends StatelessWidget {
  const VerifyOtpButton({super.key,required this.onPressed});

  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      child: Text(
        AppLocalizations.of(context)!.verify,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
