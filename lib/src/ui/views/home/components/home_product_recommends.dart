import 'package:fashion_ui_app/src/core/app_data.dart';
import 'package:fashion_ui_app/src/models/product_model.dart';
import 'package:fashion_ui_app/src/ui/common/common_text.dart';
import 'package:flutter/material.dart';

import '../../../theme/app_colors.dart';
import 'home_product_recommend_item.dart';

class HomeProductRecommends extends StatelessWidget {
  final List<ProductModel> products = AppData.products;
  HomeProductRecommends({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              CommonText(
                text: "Recommended",
                color: AppColors.dark,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              CommonText(
                text: "View All",
                color: AppColors.primary,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              )
            ],
          ),
        ),
        ListView.builder(
          itemCount: 1,
          shrinkWrap: true,
          itemBuilder: (_, index) {
            final product = products[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: HomeProductRecommendItem(product: product),
            );
          },
        ),
      ],
    );
  }
}
