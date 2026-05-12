import 'package:flutter/material.dart';
import '../../../../../../core/constants/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
            text: AppLocalizations.of(context)!.auth_continue,
            style: TextStyle(fontSize: 14, color: Theme.of(context).colorScheme.onSurface),
            children: [
              TextSpan(
                text: AppLocalizations.of(context)!.auth_terms,
                style: TextStyle(color: AppColor.mainRedColor,fontSize: 14, fontWeight: FontWeight.bold,height: 0.6),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
