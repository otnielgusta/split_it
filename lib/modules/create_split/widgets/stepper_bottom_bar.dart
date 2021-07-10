

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:split_it/modules/create_split/create_split_controller.dart';
import 'package:split_it/modules/create_split/widgets/stepper_next_button_widget.dart';
import 'package:split_it/theme/app_theme.dart';

class StepperBottomBarWidget extends StatelessWidget {
  final VoidCallback onTap;
  final CreateSplitController controller;

  const StepperBottomBarWidget(
      {Key? key, required this.onTap, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      child: Container(
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(color: AppTheme.colors.dividerWithOpacity))),
        width: double.maxFinite,
        height: 72,
        child: Row(
          children: [
            StepperNextButtonWidget(
              enable: true,
              label: "Cancelar",
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Container(
              height: double.maxFinite,
              decoration: BoxDecoration(
                  border: Border(
                      right: BorderSide(
                          color: AppTheme.colors.dividerWithOpacity))),
            ),
            Observer(builder: (context) {
              return StepperNextButtonWidget(
                label: "Continuar",
                onTap: controller.enableNavigateButton ? onTap : null,
                enable: controller.enableNavigateButton,
              );
            }),
          ],
        ),
      ),
    );
  }
}
