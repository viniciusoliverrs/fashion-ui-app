import 'package:fashion_ui_app/src/ui/views/welcome/welcome_view.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fashion UI App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WelcomeView(),
    );
  }
}
