import 'package:flutter/material.dart';

import '../../../../models/product_model.dart';
import '../../../theme/app_colors.dart';

class ProductDetailsImage extends StatelessWidget {
  const ProductDetailsImage({
    Key? key,
    required this.model,
  }) : super(key: key);

  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(36),
          child: Hero(
            tag: model.id,
            child: Image.asset(
              model.imageUrl,
              width: double.infinity,
              height: 448,
              filterQuality: FilterQuality.high,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          left: 28,
          top: 20,
          child: Material(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.grey.withAlpha(100),
            child: InkWell(
              onTap: () => Navigator.pop(context),
              child: Ink(
                padding: const EdgeInsets.all(10),
                child: Icon(
                  Icons.arrow_back_ios_outlined,
                  color: Colors.white.withAlpha(180),
                  size: 22,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
