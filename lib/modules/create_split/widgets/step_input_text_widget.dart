import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class StepInputTextWidget extends StatefulWidget {
  final String hintText;
  final void Function(String value) onChange;
  final TextAlign align;
  final EdgeInsets? padding;
  final disableBorder;
  final TextInputType type;
  final String texto;

  const StepInputTextWidget(
      {Key? key,
      required this.onChange,
      required this.hintText,
      this.align = TextAlign.center,
      this.padding,
      this.disableBorder = false,
      this.type = TextInputType.text,
      required this.texto})
      : super(key: key);

  @override
  _StepInputTextWidgetState createState() => _StepInputTextWidgetState();
}

class _StepInputTextWidgetState extends State<StepInputTextWidget> {
  TextEditingController actual = TextEditingController();

  @override
  void initState() {
    actual.text = widget.texto;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ?? const EdgeInsets.symmetric(horizontal: 64),
      child: TextField(
        controller: actual,
        keyboardType: widget.type,
        onChanged: widget.onChange,
        style: AppTheme.textStyle.textField,
        textAlign: widget.align,
        decoration: InputDecoration(
          border: UnderlineInputBorder(
            borderSide: widget.disableBorder
                ? BorderSide.none
                : BorderSide(color: AppTheme.colors.inputBorder),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: widget.disableBorder
                ? BorderSide.none
                : BorderSide(color: AppTheme.colors.inputBorder),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: widget.disableBorder
                ? BorderSide.none
                : BorderSide(color: AppTheme.colors.inputBorder),
          ),
          hintText: widget.hintText,
          hintStyle: AppTheme.textStyle.hintTextFild,
        ),
      ),
    );
  }
}
