import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:split_it/modules/home/widgets/app_bar/app_bar_controller.dart';
import 'package:split_it/modules/home/widgets/app_bar/app_bar_state.dart';
import 'package:split_it/modules/home/widgets/app_bar/widgets/app_bar_card_widget.dart';

class BottomAppBarWidget extends StatefulWidget {
  @override
  _BottomAppBarWidgetState createState() => _BottomAppBarWidgetState();
}

class _BottomAppBarWidgetState extends State<BottomAppBarWidget> {
  final AppBarController appBarController = AppBarController();

  @override
  void initState() {
    appBarController.getDashboard();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      switch (appBarController.state.runtimeType) {
        case AppBarStateLoading:
          {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AppBarCardWidget(
                  value: 0,
                  isLoading: true,
                ),
                AppBarCardWidget(
                  value: 0,
                  isLoading: true,
                )
              ],
            );
          }

        case AppBarStateSuccess:
          {
            final dashBoard =
                (appBarController.state as AppBarStateSuccess).dashboardModel;
            return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  AppBarCardWidget(
                    value: dashBoard.receive,
                    isLoading: false,
                  ),
                  AppBarCardWidget(
                    value: -dashBoard.send,
                    isLoading: false,
                  )
                ]);
          }

        case AppBarStateFailure:
          {
            final message =
                (appBarController.state as AppBarStateFailure).message;
            return Text(message);
          }

        default:
          {
            return Container();
          }
      }
    });
  }
}
