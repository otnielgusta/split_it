import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class StepInputTextWidget extends StatelessWidget {
  final String hintText;
  final void Function(String value) onChange;
  final TextAlign align;
  final EdgeInsets? padding;
  final disableBorder;
  final TextInputType type;
  final TextEditingController? controller;

  const StepInputTextWidget(
      {Key? key,
      required this.onChange,
      required this.hintText,
      this.align = TextAlign.center,
      this.padding,
      this.disableBorder = false,
      required this.type,
      this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 64),
      child: TextField(
        controller: controller,
        keyboardType: type,
        onChanged: onChange,
        style: AppTheme.textStyle.textField,
        textAlign: align,
        decoration: InputDecoration(
          border: UnderlineInputBorder(
            borderSide: disableBorder
                ? BorderSide.none
                : BorderSide(color: AppTheme.colors.inputBorder),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: disableBorder
                ? BorderSide.none
                : BorderSide(color: AppTheme.colors.inputBorder),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: disableBorder
                ? BorderSide.none
                : BorderSide(color: AppTheme.colors.inputBorder),
          ),
          hintText: hintText,
          hintStyle: AppTheme.textStyle.hintTextFild,
        ),
      ),
    );
  }
}
