import 'package:fashion_ui_app/src/ui/views/product_details/components/product_details_content.dart';
import 'package:flutter/material.dart';

import '../../../models/product_model.dart';
import 'components/product_details_image.dart';

class ProductDetailsView extends StatelessWidget {
  final ProductModel product;
  const ProductDetailsView({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ProductDetailsImage(model: product),
            Expanded(child: ProductDetailsContent(model: product))
          ],
        ),
      ),
    );
  }
}
