import 'package:flutter/material.dart';
import 'package:split_it/modules/home/widgets/app_bar/app_bar_state.dart';
import 'package:split_it/modules/home/widgets/bottom_app_bar/bottom_app_bar_widget.dart';
import 'package:split_it/modules/home/widgets/icon_dollar_widget.dart';
import 'package:split_it/modules/login/models/user_model.dart';
import 'package:split_it/theme/app_theme.dart';

import '../add_button_widget.dart';
import 'app_bar_controller.dart';
import 'widgets/app_bar_card_widget.dart';

class AppBarWidget extends StatefulWidget {
  final UserModel user;
  final VoidCallback onTapAddButton;

  const AppBarWidget(
      {Key? key, required this.user, required this.onTapAddButton})
      : super(key: key);

  @override
  _AppBarWidgetState createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 240,
          color: AppTheme.colors.backgroundSecondary,
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 62),
              child: ListTile(
                leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      widget.user.photoUrl!,
                      width: 67,
                      height: 62,
                    )),
                title: Text(
                  widget.user.name.toString(),
                  style: AppTheme.textStyle.name,
                ),
                trailing: AddButtonWidget(
                  onTap: this.widget.onTapAddButton,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            BottomAppBarWidget(),
          ],
        ),
      ],
    );
  }
}
