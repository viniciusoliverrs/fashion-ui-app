import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class CommonText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final EdgeInsetsGeometry padding;
  const CommonText({
    Key? key,
    required this.text,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w400,
    this.color = AppColors.grey,
    this.padding = EdgeInsets.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          fontFamily: "Poppins",
          color: color,
          fontWeight: fontWeight,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
