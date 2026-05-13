import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../constants/global.dart';
class EventItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final Color bgColor;
  final VoidCallback onTap;

  const EventItem(
      this.imagePath,
      this.title,
      this.bgColor, {
        super.key,
        required this.onTap,
      });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical:  width * 0.027),
      child: Row(
        children: [
          Container(
              width:  width * 0.045 * 3,
              height: 56,
              decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Image.asset(imagePath, width: width * 0.1116, height: width * 0.1116)
          ),
          SizedBox(width:  width * 0.038),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontSize:  width * 0.035,fontWeight: FontWeight.bold)),
                SizedBox(height:  width * 0.045 / 5),

                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    AppLocalizations.of(context)!.more_details,
                    style: TextStyle(color: Colors.blue, fontSize:  width * 0.022,fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}