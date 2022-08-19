import 'package:fashion_ui_app/src/ui/common/common_text.dart';
import 'package:flutter/material.dart';

class ProductDetailsColorsList extends StatefulWidget {
  final List<Color> colors;

  const ProductDetailsColorsList({
    Key? key,
    required this.colors,
  }) : super(key: key);

  @override
  State<ProductDetailsColorsList> createState() =>
      _ProductDetailsColorsListState();
}

class _ProductDetailsColorsListState extends State<ProductDetailsColorsList> {
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CommonText(
            text: "Colors",
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SizedBox(
              height: 50,
              child: ListView.builder(
                itemCount: widget.colors.length,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Material(
                          borderRadius: BorderRadius.circular(10),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(10),
                            onTap: () => setState(() => selectIndex = index),
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              width: selectIndex == index ? 30 : 40,
                              height: selectIndex == index ? 30 : 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: widget.colors[index],
                              ),
                              child: selectIndex == index
                                  ? const Icon(
                                      Icons.check,
                                      color: Colors.white,
                                    )
                                  : const SizedBox.shrink(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
