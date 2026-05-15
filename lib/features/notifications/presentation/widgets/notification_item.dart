import 'package:flutter/material.dart';

import '../../../../core/constants/global.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({super.key,required this.title,required this.subtitle,required this.time,required this.icon});
  final String title;
  final String subtitle;
  final String time;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(width * 0.022),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, color: Colors.white, size: width * 0.052),
            ),
            SizedBox(width: width * 0.035),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: width * .04,
                    ),
                  ),
                  SizedBox(height: width * .045 / 5.4),
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onSurface,
                      fontSize: 13,
                      height: 1.4,
                    ),
                  ),
                  SizedBox(height: width * 0.021),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      time,
                      style: TextStyle(color: Colors.blue, fontSize: 12),
                    ),
                  ),
                  SizedBox(height: width * 0.009),
                ],
              ),
            ),
          ],
        ),
        Divider(height: width * 0.025, thickness: 1),
      ],
    );
  }
}
