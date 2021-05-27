import 'dart:ui';

abstract class AppColors {
  Color get backgroundSecondary;
  Color get backgroundPrimary;

  Color get title;
  Color get button;
  Color get border;
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
  Color get backgroundSecondary => throw UnimplementedError();

  @override
  // TODO: implement border
  Color get border => Color(0xFFDCE0E5);
}
