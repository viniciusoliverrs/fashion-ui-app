// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../../models/product_model.dart';
import '../../../common/common_circle_button.dart';
import '../../../common/common_text.dart';
import '../../../theme/app_colors.dart';

class HomeProductTrendItem extends StatelessWidget {
  const HomeProductTrendItem({
    Key? key,
    required this.model,
  }) : super(key: key);

  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 5,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Hero(
              tag: model.id,
              child: Image.asset(
                model.imageUrl,
                height: 220,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonText(
                  text: model.title,
                  fontSize: 20,
                  color: Colors.black,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CommonText(
                      text: model.price.toString(),
                      color: AppColors.primary,
                      fontSize: 24,
                    ),
                    CommonCircleButton(
                      icon: Icons.favorite_outline,
                      onPressed: () {},
                      iconSize: 20,
                      padding: const EdgeInsets.all(4),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
