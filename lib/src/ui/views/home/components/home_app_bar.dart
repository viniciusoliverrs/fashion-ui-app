import 'package:fashion_ui_app/src/ui/common/common_text.dart';
import 'package:fashion_ui_app/src/ui/theme/app_colors.dart';
import 'package:fashion_ui_app/src/ui/theme/app_images.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget with PreferredSizeWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                AppImages.welcome,
                width: MediaQuery.of(context).size.width * .1,
                height: MediaQuery.of(context).size.height * .06,
                fit: BoxFit.fitWidth,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    CommonText(
                      padding: EdgeInsets.only(top: 10),
                      text: 'Welcome',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    CommonText(
                      padding: EdgeInsets.only(top: 10),
                      text: 'John Doe',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppColors.dark,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
