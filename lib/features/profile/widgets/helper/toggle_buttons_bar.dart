import 'package:black_box/features/profile/widgets/helper/toggle_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/global.dart';

class ToggleButtonsBar extends StatefulWidget {
  const ToggleButtonsBar({super.key,required this.onTapFaq,required this.onTapContact,required this.page});
  final void Function()? onTapFaq;
  final void Function()? onTapContact;
  final int page;
  @override
  State<ToggleButtonsBar> createState() => _ToggleButtonsBarState();
}

class _ToggleButtonsBarState extends State<ToggleButtonsBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: width * .15,
      decoration: BoxDecoration(
          color: AppColor.lightPink,
          borderRadius: BorderRadius.circular(width * 0.045)
      ),
      child: Row(
        children: [

          ToggleButton(title: AppLocalizations.of(context)!.help_faq, isSelected: widget.page == 0, onTap: widget.onTapFaq),
          ToggleButton(title: AppLocalizations.of(context)!.help_contact, isSelected: widget.page == 1, onTap: widget.onTapContact)
        ],
      ),
    );
  }
}

