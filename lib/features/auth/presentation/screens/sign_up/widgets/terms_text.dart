import 'package:flutter/material.dart';

import '../../../../../../core/constants/colors.dart';

class TermsText extends StatelessWidget {
  const TermsText({super.key,this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Center(
        child: Text.rich(
          TextSpan(
            text: "By continuing, you agree to\n",
            style: TextStyle(fontSize: 14, color: Colors.grey[800]),
            children: [
              TextSpan(
                text: "Terms of Use and Privacy Policy.",
                style: TextStyle(color: mainRedColor,fontSize: 14, fontWeight: FontWeight.bold,height: 0.6),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
