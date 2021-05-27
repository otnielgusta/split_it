import 'package:flutter/material.dart';
import 'package:split_it/modules/login/models/user_model.dart';
import 'package:split_it/theme/app_theme.dart';

import 'app_bar_card_widget.dart';

class AppBarWidget extends StatelessWidget {
  final UserModel user;

  const AppBarWidget({Key? key, required this.user}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(gradient: AppTheme.gradients.background),
      child: Padding(
        padding: const EdgeInsets.only(right: 24, left: 24, top: 62),
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          user.photoUrl!,
                          width: 67,
                          height: 62,
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      user.name.toString(),
                      style: AppTheme.textStyle.name,
                    ),
                  ],
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 17),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: AppTheme.colors.borderOpacityWhite)),
                  child: Icon(
                    Icons.add,
                    color: AppTheme.colors.backgroundPrimary,
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment(0.0, 3.7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppBarCardWidget(
                    label: "A receber",
                    value: "R\$ 124,00",
                    colorBackground: AppTheme.colors.backgroundOpacityGreen,
                    icon: "assets/images/receber.png",
                    colorValue: AppTheme.textStyle.inter20_600_green,
                  ),
                  AppBarCardWidget(
                    label: "A pagar",
                    value: "R\$ 48,00",
                    colorBackground: AppTheme.colors.backgroundOpacityRed,
                    icon: "assets/images/pagar.png",
                    colorValue: AppTheme.textStyle.inter20_600_red,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
