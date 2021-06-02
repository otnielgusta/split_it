import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

enum IconDollarType {
  send,
  receive,
}

class IconDollarWidget extends StatelessWidget {
  final IconDollarType type;
  const IconDollarWidget({
    Key? key,
    required this.type,
  }) : super(key: key);

  String get pathImage =>
      "assets/images/${this.type == IconDollarType.receive ? 'receber' : 'pagar'}.png";
  Color get backgroundColor => this.type == IconDollarType.receive
      ? AppTheme.colors.backgroundIconGreen.withOpacity(0.12)
      : AppTheme.colors.backgroundIconRed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: this.backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Image.asset(
          this.pathImage,
          width: 32,
        ),
      ),
    );
  }
}
