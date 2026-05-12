import 'package:flutter/material.dart';
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
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Container(
              width: 60,
              height: 56,
              decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Image.asset(imagePath, width: 47, height: 48)
          ),
          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),

                const SizedBox(height: 4),

                GestureDetector(
                  onTap: onTap,
                  child: const Text(
                    "More Details",
                    style: TextStyle(color: Colors.blue, fontSize: 12,fontWeight: FontWeight.bold),
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