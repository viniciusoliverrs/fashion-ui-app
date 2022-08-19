// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fashion_ui_app/src/models/product_model.dart';
import 'package:flutter/material.dart';

import '../../../common/common_circle_button.dart';
import '../../../common/common_text.dart';
import '../../../theme/app_colors.dart';
import 'product_details_colors_list.dart';

class ProductDetailsContent extends StatelessWidget {
  final ProductModel model;
  const ProductDetailsContent({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 30, 18, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CommonText(
                text: model.title,
                color: AppColors.dark,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              CommonText(
                text: model.price.toString(),
                color: AppColors.dark,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonText(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  text: model.subTitle,
                  fontSize: 12,
                ),
                CommonText(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  text: model.description,
                  fontSize: 14,
                ),
              ],
            ),
          ),
          const ProductDetailsColorsList(
            colors: [
              Colors.green,
              Colors.red,
              Colors.blue,
              Colors.purple,
              Colors.pink,
              Colors.yellow,
              Colors.cyan
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 60,
                    child: Material(
                      borderRadius: BorderRadius.circular(30),
                      color: AppColors.primary,
                      child: InkWell(
                        onTap: () {},
                        child: Ink(
                          child: const Center(
                            child: CommonText(
                              text: "Add to Cart",
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 30),
                CommonCircleButton(
                  backgroundColor: AppColors.primary.withAlpha(60),
                  icon: Icons.shopping_cart_outlined,
                  iconColor: AppColors.grey.withAlpha(100),
                  iconSize: 25,
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
