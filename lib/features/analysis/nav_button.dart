import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  const NavButton({super.key,required this.text,required this.background,required this.onPressed});
  final String text;
  final Color background;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(fixedSize: WidgetStatePropertyAll(Size(90,50)),
        padding: WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 12,vertical: 12)),
        backgroundColor: WidgetStatePropertyAll(background),
        shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(19)))),
        onPressed: onPressed,
        child: Text(text,style: TextStyle(color: Colors.black,fontSize: 15),)
    );
  }
}
