

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../../core/constants/global.dart';

class CircularIndicator extends StatelessWidget {
  const CircularIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: width * .162,
              height: width * .162,
              child: CircularProgressIndicator(
                value: 0.5,
                strokeWidth: 3,
                color: Theme.of(context).colorScheme.primary,
                backgroundColor: Colors.white,
              ),
            ),
            Image.asset(
              'assets/small_car.png',
              color: Theme.of(context).colorScheme.onSecondaryFixed,
              width: width * .085,
              height: width * .048,
            ),
          ],
        ),
        SizedBox(height: width * .022),
        Text(
          AppLocalizations.of(context)!.home_looks_good,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,color: Theme.of(context).colorScheme.onSecondaryFixed),
        ),
      ],
    );
  }
}


