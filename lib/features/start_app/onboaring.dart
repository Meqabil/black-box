

import 'package:black_box/features/start_app/widgets/onboarding_basic_screen.dart';
import 'package:flutter/material.dart';



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
                title: "Welcome",
                subtitle: "To Black Box Manager",
                image: "assets/start_screen/car1.png",
                currentPage: 0,
                controller: controller,
                titleSize: 30,
                subtitleSize: 27,
            ),
            OnboardingBasicScreen(
                title: "See The Story Behind Your Drive,",
                subtitle: "Recording Every Journey, Analyzing Every Mile.",
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
