import 'package:black_box/core/constants/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../../core/theme/app_color.dart';

class HelpSearchBar extends StatelessWidget {
  const HelpSearchBar({super.key,required this.onChanged});
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      style: TextStyle(color: const Color(0xFF052224)),
      decoration: InputDecoration(
        hintText: AppLocalizations.of(context)!.search_hint,
        hintStyle: TextStyle(color: const Color(0xFF052224)),
        filled: true,
        fillColor: pref!.getString("theme") == 'dark' ? Colors.white : AppColor.lightPink,
        contentPadding: EdgeInsets.only(left: width * 0.052,right: width * 0.19),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(width * 0.029),
            borderSide: const BorderSide(color: AppColor.mainRedColor)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(width * 0.029),
            borderSide: const BorderSide(color: AppColor.mainRedColor)),
      ),
    );
  }
}

