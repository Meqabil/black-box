import 'package:flutter/material.dart';
import '../../../../../../core/theme/app_color.dart';
import '../../login/login_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class BottomLoginText extends StatelessWidget {
  const BottomLoginText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(AppLocalizations.of(context)!.auth_already_have_account, style: TextStyle(color: Colors.grey[600],fontSize: 15)),
        GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const LoginScreen()),
            );
          },
          child: Text(
            AppLocalizations.of(context)!.auth_space_login,
            style: TextStyle(color: AppColor.mainRedColor, fontWeight: FontWeight.bold,fontSize: 17),
          ),
        ),
      ],
    );
  }
}
