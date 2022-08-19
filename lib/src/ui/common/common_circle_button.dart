// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class CommonCircleButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final EdgeInsetsGeometry padding;
  final double iconSize;
  final Color backgroundColor;
  final Color iconColor;
  const CommonCircleButton({
    Key? key,
    required this.onPressed,
    required this.icon,
    this.iconSize = 36,
    this.padding = const EdgeInsets.all(16),
    this.backgroundColor = AppColors.primary,
    this.iconColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(100),
      child: InkWell(
        borderRadius: BorderRadius.circular(100),
        onTap: onPressed,
        child: Ink(
          padding: padding,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: backgroundColor,
          ),
          child: Icon(
            icon,
            color: iconColor,
            size: iconSize,
          ),
        ),
      ),
    );
  }
}
