import 'package:flutter/material.dart';
import 'package:split_it/modules/splash/splash_page.dart';

class AppWidet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Split.it",
      home: SplashPage(),
    );
  }
}
