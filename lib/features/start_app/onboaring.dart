

import 'package:black_box/features/start_app/widgets/onboarding_basic_screen.dart';
import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: controller,
          scrollDirection: Axis.horizontal,

          children: [
            OnboardingBasicScreen(
                title: AppLocalizations.of(context)!.onboarding_title_1,
                subtitle: AppLocalizations.of(context)!.onboarding_desc_1,
                image: "assets/start_screen/car1.png",
                currentPage: 0,
                controller: controller,
                titleSize: 30,
                subtitleSize: 27,
            ),
            OnboardingBasicScreen(
                title: AppLocalizations.of(context)!.onboarding_title_2,
                subtitle: AppLocalizations.of(context)!.onboarding_desc_2,
                image: "assets/start_screen/car2.png",
                currentPage: 1,
                controller: controller,
                titleSize: 22,
                subtitleSize: 18,
            ),
          ],
        ),
      ),
    );
  }
}
