import 'package:flutter/material.dart';
import 'package:split_it/shared/loading_widget.dart';
import 'package:split_it/theme/app_theme.dart';
import 'package:shimmer/shimmer.dart';
import '../../icon_dollar_widget.dart';

class AppBarCardWidget extends StatelessWidget {
  final double value;
  final bool isLoading;

  TextStyle get textStyle => value >= 0
      ? AppTheme.textStyle.inter20_600_green
      : AppTheme.textStyle.inter20_600_red;

  IconDollarType get iconDollarType =>
      value >= 0 ? IconDollarType.receive : IconDollarType.send;

  String get label => value >= 0 ? 'A receber' : 'A pagar';

  const AppBarCardWidget({
    Key? key,
    required this.value,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppTheme.colors.backgroundPrimary,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppTheme.colors.border)),
      width: 156,
      height: 168,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (isLoading) ...[
              LoadingWidget(
                size: Size(48, 48),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LoadingWidget(
                    size: Size(65, 20),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  LoadingWidget(
                    size: Size(98, 24),
                  ),
                ],
              ),
            ] else ...[
              IconDollarWidget(
                type: iconDollarType,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  this.label,
                  style: AppTheme.textStyle.inter14_400,
                ),
                Text(
                  "R\$ ${this.value}",
                  style: this.textStyle,
                ),
              ])
            ],
          ],
        ),
      ),
    );
  }
}
