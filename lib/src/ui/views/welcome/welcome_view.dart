import 'package:fashion_ui_app/src/ui/theme/app_images.dart';
import 'package:flutter/material.dart';

import 'components/welcome_info_card.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              width: size.width,
              height: size.height * 0.6,
              child: Image.asset(
                AppImages.welcome,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: WelcomeInfoCard(),
          )
        ],
      ),
    );
  }
}
