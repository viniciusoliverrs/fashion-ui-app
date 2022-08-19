import 'package:flutter/material.dart';

import '../../../../models/product_model.dart';
import '../../../common/common_text.dart';
import '../../../theme/app_colors.dart';

class HomeProductRecommendItem extends StatelessWidget {
  const HomeProductRecommendItem({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(28),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                spreadRadius: 5,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    product.imageUrl,
                    width: 70,
                    height: 70,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CommonText(
                          padding: const EdgeInsets.only(bottom: 4),
                          text: product.title,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                        CommonText(
                          text: product.subTitle,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ],
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    size: 22,
                    color: AppColors.grey,
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
