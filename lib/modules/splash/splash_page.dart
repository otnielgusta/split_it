import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initializeFirebase() async {
    try {
      await Firebase.initializeApp();
      await Future.delayed(Duration(seconds: 3));
      Navigator.pushReplacementNamed(context, "/login");
    } catch (e) {
      await Future.delayed(Duration(seconds: 3));
      Navigator.pushReplacementNamed(context, "/error");
    }
  }

  @override
  void initState() {
    initializeFirebase();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: AppTheme.gradients.background),
        width: size.width,
        height: size.height,
        child: SafeArea(
          top: true,
          bottom: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 32),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Opacity(
                          opacity: 0.2,
                          child: Image.asset(
                            "assets/images/retangulo-esquerdo.png",
                            width: 198,
                            height: 98,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: [
                        Opacity(
                          opacity: 0.2,
                          child: Image.asset(
                            "assets/images/retangulo-esquerdo.png",
                            width: 114,
                            height: 54,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                child: Image.asset(
                  "assets/images/logo.png",
                  width: 128,
                  height: 112,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 32),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Opacity(
                          opacity: 0.2,
                          child: Image.asset(
                            "assets/images/retangulo-direito.png",
                            width: 198,
                            height: 98,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Opacity(
                          opacity: 0.2,
                          child: Image.asset(
                            "assets/images/retangulo-direito.png",
                            width: 114,
                            height: 54,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
