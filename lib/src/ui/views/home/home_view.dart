import 'package:fashion_ui_app/src/ui/views/home/components/home_app_bar.dart';
import 'package:fashion_ui_app/src/ui/views/home/components/home_product_recommends.dart';
import 'package:fashion_ui_app/src/ui/views/home/components/home_product_trends.dart';
import 'package:flutter/material.dart';

import 'components/home_search_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: const HomeSearchBar(),
            ),
            HomeProductTrends(),
            HomeProductRecommends(),
          ],
        ),
      ),
    );
  }
}
