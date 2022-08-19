// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:fashion_ui_app/src/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';

class WelcomeSliderIndicator extends StatelessWidget {
  final int currentIndex;
  final int viewCount;

  const WelcomeSliderIndicator({
    Key? key,
    required this.currentIndex,
    required this.viewCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: List.generate(viewCount, (index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          height: 10,
          width: index == viewCount-1 ? 20 : 10,
          decoration: BoxDecoration(
            color: currentIndex == index ? AppColors.primary : Colors.grey,
            borderRadius: BorderRadius.circular(3),
          ),
        );
      }),
    );
  }
}
