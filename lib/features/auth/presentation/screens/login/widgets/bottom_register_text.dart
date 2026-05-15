import 'package:flutter/material.dart';

import '../../../../../../core/theme/app_color.dart';
import '../../sign_up/signup_screen.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class BottomRegisterText extends StatelessWidget {
  const BottomRegisterText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(AppLocalizations.of(context)!.auth_no_account, style: TextStyle(color: Colors.grey[600],fontSize: 15)),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const SignupScreen()));
          },
          child: Text(
            AppLocalizations.of(context)!.auth_signup,
            style: TextStyle(color: AppColor.mainRedColor, fontWeight: FontWeight.bold,fontSize: 17),
          ),
        ),
      ],
    );
  }
}
