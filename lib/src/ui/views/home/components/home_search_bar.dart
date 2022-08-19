import 'package:fashion_ui_app/src/ui/common/common_circle_button.dart';
import 'package:fashion_ui_app/src/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: TextField(
              autofocus: false,
              decoration: InputDecoration(
                hintText: 'Search',

                hintStyle: const TextStyle(
                  color: AppColors.grey,
                  fontSize: 18,
                ),
                contentPadding: const EdgeInsets.fromLTRB(5, 14, 5, 0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                prefixIcon: const Icon(Icons.search),
              ),
            ),
          ),
          const SizedBox(width: 10),
          CommonCircleButton(
            icon: Icons.menu,
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            padding: const EdgeInsets.all(10),
            iconSize: MediaQuery.of(context).size.width * .05,
          ),
        ],
      ),
    );
  }
}
