import 'package:flutter/material.dart';

class OptionButton extends StatelessWidget {
  const OptionButton({super.key,required this.title,required this.icon,required this.iconBg,required this.textColor,required this.onTap});
  final void Function()? onTap;
  final IconData icon;
  final String title;
  final Color iconBg;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 57, height: 53,
        decoration: BoxDecoration(color: iconBg, borderRadius: BorderRadius.circular(20)),
        child: Icon(icon, color: Colors.white,size: 30,),
      ),
      title: Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: textColor)),
      onTap: onTap,
    );
  }
}
