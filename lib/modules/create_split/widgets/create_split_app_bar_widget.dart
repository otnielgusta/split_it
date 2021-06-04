import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class CreateSplitAppBarWidget extends PreferredSize {
  final VoidCallback onTap;
  final int index;
  final int length;
  CreateSplitAppBarWidget(
      {required this.onTap, required this.index, required this.length})
      : super(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 8, right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.arrow_back_rounded,
                        color: AppTheme.colors.backButton,
                      ),
                      onPressed: onTap),
                  Text.rich(TextSpan(
                      text: "0${index + 1}",
                      style: AppTheme.textStyle.stepperIndicatorPrimary,
                      children: [
                        TextSpan(
                            text: " - 0$length",
                            style: AppTheme.textStyle.stepperIdicatorSecondary),
                      ]))
                ],
              ),
            ),
          ),
          preferredSize: Size.fromHeight(60),
        );
}
