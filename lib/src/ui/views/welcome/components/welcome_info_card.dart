import 'package:fashion_ui_app/src/ui/common/common_circle_button.dart';
import 'package:fashion_ui_app/src/ui/views/welcome/components/welcome_slider_indicator.dart';
import 'package:flutter/material.dart';

import '../../home/home_view.dart';
import 'sliders/welcome_slider1.dart';

class WelcomeInfoCard extends StatefulWidget {
  const WelcomeInfoCard({Key? key}) : super(key: key);

  @override
  State<WelcomeInfoCard> createState() => _WelcomeInfoCardState();
}

class _WelcomeInfoCardState extends State<WelcomeInfoCard> {
  final pageController = PageController(initialPage: 0);

  int currentIndex = 0;

  final List<Widget> sliders = [
    const WelcomeSlider1(),
    const WelcomeSlider1(),
    const WelcomeSlider1(),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.5,
      padding: const EdgeInsets.only(top: 50),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40),
          topLeft: Radius.circular(40),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 130,
            child: PageView(
              controller: pageController,
              onPageChanged: (index) => setState(() => currentIndex = index),
              physics: const BouncingScrollPhysics(),
              children: sliders,
            ),
          ),
          const SizedBox(height: 30),
          CommonCircleButton(
            icon: Icons.arrow_forward,
            onPressed: () async {
              if (currentIndex == sliders.length - 1) {
                await Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const HomeView()));
              } else {
                pageController.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              }
              currentIndex++;
              pageController.animateToPage(
                currentIndex,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            },
          ),
          const SizedBox(height: 30),
          WelcomeSliderIndicator(
            currentIndex: currentIndex,
            viewCount: sliders.length,
          ),
        ],
      ),
    );
  }
}
