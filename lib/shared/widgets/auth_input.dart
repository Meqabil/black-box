import 'package:flutter/material.dart';

import '../../core/constants/global.dart';
import '../../core/constants/images.dart';

class AuthInput extends StatelessWidget {
  const AuthInput({super.key,required this.obscure,required this.onTap,required this.controller,this.validator});
  final bool obscure;
  final void Function()? onTap;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: width * 0.116,
      child: TextFormField(
        controller: controller,
        obscureText: obscure,
        validator: validator,
        decoration: InputDecoration(
          hintText: "●  ●  ●  ●",
          hintStyle: TextStyle(color: Colors.grey),
          filled: true,
          contentPadding: EdgeInsets.symmetric(vertical: 1,horizontal: width * .052),
          suffixIcon: InkWell(
              onTap: onTap,
              child: Padding(
                padding: EdgeInsets.all(width * 0.025),
                child: Image.asset(
                  obscure ? AppImages.eyeBrow : AppImages.eye,
                  width: width * 0.045,
                  height: width * 0.45,
                  fit: BoxFit.fill,color: Theme.of(context).colorScheme.onSurface,
                ),
              )
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(width * .045),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
