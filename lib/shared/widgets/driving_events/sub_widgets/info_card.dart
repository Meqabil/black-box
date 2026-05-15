import 'package:flutter/material.dart';

import '../../../../core/constants/global.dart';
import '../../../../core/theme/app_color.dart';


class InfoCard extends StatelessWidget {
  final String title;
  final String value;
  final String imagePath;

  const InfoCard({
    super.key,
    required this.title,
    required this.value,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: pref!.getString("theme") == 'dark' ? AppColor.darkBlock : Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Container(
            width: 46,
            height: 41,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(title, style: TextStyle(fontSize: 12,color: Theme.of(context).colorScheme.onSecondaryFixed)),
          const SizedBox(height: 5),
          Text(value, style: TextStyle(fontWeight: FontWeight.bold,color: Theme.of(context).colorScheme.onSecondaryFixed)),
        ],
      ),
    );
  }
}