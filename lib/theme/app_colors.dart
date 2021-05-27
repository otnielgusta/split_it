import 'dart:ui';

abstract class AppColors {
  Color get backgroundSecondary;
  Color get backgroundPrimary;

  Color get title;
  Color get button;
  Color get border;
  Color get textRed;

  Color get backgroundOpacityGreen;
  Color get backgroundOpacityRed;

  Color get borderOpacityWhite;
}

class AppColorsDefault implements AppColors {
  @override
  // TODO: implement background
  Color get backgroundSplash => Color(0xFF40B38C);

  @override
  // TODO: implement title
  Color get title => Color(0xFF40B28C);

  @override
  // TODO: implement button
  Color get button => Color(0xFF666666);

  @override
  // TODO: implement backgroundPrimary
  Color get backgroundPrimary => Color(0xFFFFFFFF);

  @override
  // TODO: implement backgroundSecondary
  Color get backgroundSecondary => Color(0xFF40B28C);

  @override
  // TODO: implement border
  Color get border => Color(0xFFDCE0E5);

  @override
  // TODO: implement backgroundOpacityGreen
  Color get backgroundOpacityGreen => new Color.fromRGBO(64, 178, 140, 0.12);

  @override
  // TODO: implement borderOpacityWhite
  Color get borderOpacityWhite => new Color.fromRGBO(255, 255, 255, 0.25);

  @override
  // TODO: implement backgroundOpacityRed
  Color get backgroundOpacityRed => new Color.fromRGBO(232, 63, 91, 0.1);

  @override
  // TODO: implement textRed
  Color get textRed => Color(0xFFE83F5B);
}
