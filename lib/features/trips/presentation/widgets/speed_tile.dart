
import 'package:flutter/material.dart';

class SpeedTile extends StatelessWidget {
  const SpeedTile({
    super.key,
    required this.icon,
    required this.color,
    required this.title,
    required this.value,
  });
    final IconData icon;
    final String title;
    final double value;
    final Color color;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        backgroundColor: color.withAlpha(150),
        child: Icon(icon, color: color),
      ),
      title: Text(title),
      trailing: Text(
        "${value.toStringAsFixed(1)} km/h",
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
    );
  }
}

