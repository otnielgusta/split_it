import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class AppBarCardWidget extends StatelessWidget {
  final String label;
  final String value;
  final String icon;

  final TextStyle colorValue;
  final Color colorBackground;

  const AppBarCardWidget({
    Key? key,
    required this.label,
    required this.value,
    required this.icon,
    required this.colorValue,
    required this.colorBackground,
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
            Container(
              padding: const EdgeInsets.all(12),
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: this.colorBackground,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                this.icon,
                width: 24,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  this.label,
                  style: AppTheme.textStyle.inter14_400,
                ),
                Text(
                  this.value,
                  style: this.colorValue,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
