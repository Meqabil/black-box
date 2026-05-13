import 'package:flutter/material.dart';

import '../../../../core/constants/global.dart';
import '../../../../core/constants/images.dart';
import 'input_label.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({
    super.key,
    required this.label,
    required this.labelColor,
    required this.fillColor,
    required this.controller,
    required this.isVisible,
    required this.onToggle,
    required this.validator,
  });

  final String label;
  final Color labelColor;
  final Color fillColor;
  final TextEditingController controller;
  final bool isVisible;
  final VoidCallback onToggle;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InputLabel(text: label, textColor: Theme.of(context).colorScheme.onSurface,),
        SizedBox(height: width * 0.022),
        SizedBox(
          height: width * 0.116,
          child: TextFormField(
            controller: controller,
            obscureText: !isVisible,
            validator: validator,
            decoration: InputDecoration(
              hintText: "● ● ● ● ● ● ● ●",
              hintStyle: TextStyle(color: Colors.grey),
              filled: true,
              contentPadding: EdgeInsets.symmetric(vertical: 1,horizontal: width * .052),
              suffixIcon: InkWell(
                  onTap: onToggle,
                  child: Padding(
                    padding: EdgeInsets.all(width * 0.025),
                    child: Image.asset(
                      !isVisible ? AppImages.eyeBrow : AppImages.eye,
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
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}
