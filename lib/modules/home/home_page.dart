import 'package:flutter/material.dart';
import 'package:split_it/modules/home/widgets/app_bar_card_widget.dart';
import 'package:split_it/modules/home/widgets/app_bar_widget.dart';
import 'package:split_it/modules/login/models/user_model.dart';
import 'package:split_it/theme/app_theme.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final UserModel user =
        ModalRoute.of(context)!.settings.arguments as UserModel;
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(244),
            child: AppBarWidget(user: user)));
  }
}
