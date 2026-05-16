import 'package:flutter/material.dart';

import '../../../../../core/constants/global.dart';

class OptionButton extends StatelessWidget {
  const OptionButton({super.key,required this.title,required this.icon,required this.iconBg,required this.onTap});
  final void Function()? onTap;
  final IconData icon;
  final String title;
  final Color iconBg;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: width * .1333, height: width * 0.1232,
        decoration: BoxDecoration(color: iconBg, borderRadius: BorderRadius.circular(width * .049)),
        child: Icon(icon, color: Theme.of(context).colorScheme.onSecondary,size: width * .069,),
      ),
      title: Text(title, style: TextStyle(fontSize: width * .035, fontWeight: FontWeight.w600, color: Theme.of(context).colorScheme.onSurface)),
      onTap: onTap,
    );
  }
}
