
import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';

class ToggleButton extends StatelessWidget {
  const ToggleButton({super.key,required this.title,required this.isSelected,required this.onTap});
  final String title;
  final bool isSelected;

  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: isSelected ? AppColor.mainRedColor : Colors.transparent,
              borderRadius: BorderRadius.circular(12)),
          alignment: Alignment.center,
          child: Text(title,
              style: TextStyle(
                  color: isSelected ? Colors.white : Colors.black87,
                  fontWeight: FontWeight.w600)),
        ),
      ),
    );
  }
}
