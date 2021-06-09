import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:split_it/modules/home/home_state.dart';
import 'package:split_it/modules/home/controllers/home_controller.dart';

import 'package:split_it/modules/home/widgets/app_bar/app_bar_widget.dart';

import 'package:split_it/modules/home/widgets/event_tile_widget.dart';
import 'package:split_it/modules/login/models/user_model.dart';
import 'package:split_it/shared/models/event_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController homeController = HomeController();

  @override
  void initState() {
    homeController.getEvents();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final UserModel user =
        ModalRoute.of(context)!.settings.arguments as UserModel;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(298),
          child: AppBarWidget(
            user: user,
            onTapAddButton: () {
              Navigator.pushNamed(context, "/create-split");
            },
          )),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Observer(builder: (context) {
                  if (homeController.state is HomeStateLoading) {
                    return Column(
                      children: List.generate(
                        3,
                        (index) => EventTileWidget(
                          eventModel: EventModel(),
                          isLoading: true,
                        ),
                      ),
                    );
                  } else if (homeController.state is HomeStateSuccess) {
                    return Column(
                      children: (homeController.state as HomeStateSuccess)
                          .events
                          .map((e) => EventTileWidget(
                                eventModel: e,
                                isLoading: false,
                              ))
                          .toList(),
                    );
                  } else if (homeController.state is HomeStateFailure) {
                    return Text(
                        (homeController.state as HomeStateFailure).message);
                  } else {
                    return Container();
                  }
                })
              ],
            ),
          )),
    );
  }
}
