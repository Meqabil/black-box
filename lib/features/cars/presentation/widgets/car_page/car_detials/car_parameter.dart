import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class CarParameter extends StatelessWidget {
  const CarParameter({super.key,required this.context,required this.title,required this.imagePath,required this.iconBgColor,required this.destinationPage});
  final BuildContext context;
  final String imagePath;
  final String title;
  final Color iconBgColor;
  final Widget destinationPage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: iconBgColor,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Image.asset(
              imagePath,
              width: 32,
              height: 28,
              fit: BoxFit.contain,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => destinationPage),
                  );
                },
                child: Text(
                  AppLocalizations.of(context)!.tracking_last_updates,
                  style: TextStyle(
                    color: Color(0xFF0068FF),
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
