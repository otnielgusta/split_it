import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class SocialButtonWidget extends StatelessWidget {
  final String imagePath;
  final String text;
  final VoidCallback onTap;

  const SocialButtonWidget(
      {Key? key,
      required this.imagePath,
      required this.text,
      required this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.fromBorderSide(
                BorderSide(color: AppTheme.colors.border))),
        child: Row(
          children: [
            Container(
                decoration: BoxDecoration(
                  border: Border(
                    right: BorderSide(color: AppTheme.colors.border),
                  ),
                ),
                width: 56,
                height: 56,
                child: Image.asset(this.imagePath)),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(this.text, style: AppTheme.textStyle.button),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
