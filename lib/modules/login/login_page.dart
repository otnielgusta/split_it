import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:split_it/modules/login/login_controller.dart';
import 'package:split_it/modules/login/login_service.dart';
import 'package:split_it/modules/login/login_state.dart';
import 'package:split_it/modules/login/widgets/social_button_widget.dart';
import 'package:split_it/theme/app_theme.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late LoginController controller;

  @override
  void initState() {
    controller = LoginController(
        service: LoginServiceImpl(),
        onUpdate: () {
          if (controller.state is LoginStateSuccess) {
            final user = (controller.state as LoginStateSuccess).user;
            Navigator.pushReplacementNamed(context, "/home", arguments: user);
          } else {
            setState(() {});
          }
        });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppTheme.colors.backgroundPrimary,
      body: Container(
        width: size.width,
        height: size.height,
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 290,
                          padding: const EdgeInsets.only(
                            left: 40,
                          ),
                          child: Text("Divida\nsuas contas\ncom seus\namigos",
                              style: AppTheme.textStyle.title),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 40,
                      ),
                      child: ListTile(
                        leading: Image.asset("assets/images/emoji.png"),
                        title: Text("Faça seu login com\numa das contas abaixo",
                            style: AppTheme.textStyle.button),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    if (controller.state is LoginStateLoading) ...[
                      Center(child: CircularProgressIndicator()),
                    ] else if (controller.state is LoginStateFailure) ...[
                      Center(
                        child: Text(
                            (controller.state as LoginStateFailure).message),
                      )
                    ] else
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32),
                        child: Column(
                          children: [
                            SocialButtonWidget(
                                imagePath: "assets/images/google.png",
                                text: "Entrar com Google",
                                onTap: () {
                                  controller.googleSignIn();
                                }),
                            SizedBox(
                              height: 12,
                            ),
                          ],
                        ),
                      )
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
