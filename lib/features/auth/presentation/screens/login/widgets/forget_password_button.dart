import 'package:flutter/material.dart';
import '../../password/forget_password_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class ForgetPasswordButton extends StatelessWidget {
  const ForgetPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ForgotPasswordScreen()),
          );
        },
        child: Text(
          AppLocalizations.of(context)!.auth_forgot_password,
          style: TextStyle(color: Theme.of(context).colorScheme.onSurface, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
