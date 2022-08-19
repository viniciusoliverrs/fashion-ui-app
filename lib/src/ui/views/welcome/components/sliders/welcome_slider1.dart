import 'package:flutter/material.dart';

import '../../../../common/common_text.dart';
import '../../../../theme/app_colors.dart';

class WelcomeSlider1 extends StatelessWidget {
  const WelcomeSlider1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              Positioned(
                right: 94,
                top: 8,
                child: Transform.rotate(
                  angle: -0.12,
                  child: Container(
                    width: 80,
                    height: 28,
                    color: AppColors.primary,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: RichText(
                  text: const TextSpan(
                    text: 'FindThe Best ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                    children: [
                      TextSpan(
                        text: 'Fashion',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const CommonText(
          text: "Style For You",
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        const SizedBox(height: 10),
        const CommonText(text: "platfrom that provides many kinds of the best"),
        const CommonText(text: "and most trusted fashion"),
        const CommonText(text: "styles"),
      ],
    );
  }
}
