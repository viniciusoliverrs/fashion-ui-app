import 'package:fashion_ui_app/src/core/app_data.dart';
import 'package:fashion_ui_app/src/models/product_model.dart';
import 'package:fashion_ui_app/src/ui/common/common_text.dart';
import 'package:flutter/material.dart';

import '../../product_details/product_details_view.dart';
import 'home_product_trend_item.dart';

class HomeProductTrends extends StatelessWidget {
  final List<ProductModel> products = AppData.products;
  HomeProductTrends({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              CommonText(
                text: "Popular Fashion",
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
              CommonText(
                text: "View All",
                fontSize: 14,
              )
            ],
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 320,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return Padding(
                padding: const EdgeInsets.only(left: 24, bottom: 10, top: 10),
                child: GestureDetector(
                  onTap: () async {
                    await Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => ProductDetailsView(
                                  product: product,
                                )));
                  },
                  child: HomeProductTrendItem(model: product),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
