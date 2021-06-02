import 'dart:ui';

abstract class AppColors {
  Color get backgroundSecondary;
  Color get backgroundPrimary;

  Color get title;
  Color get button;
  Color get border;
  Color get textRed;

  Color get backgroundIconGreen;
  Color get backgroundIconRed;

  Color get borderWhite;

  Color get eventTileTitle;
  Color get eventTileSubtitle;
  Color get eventTileMoney;
  Color get eventTilePeople;

  Color get divider;
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
  Color get backgroundIconGreen => new Color(0xFF45CC93);

  @override
  // TODO: implement borderOpacityWhite
  Color get borderWhite => new Color(0xFFFFFFFF);

  @override
  // TODO: implement backgroundOpacityRed
  Color get backgroundIconRed => new Color(0xFFFDECEF);

  @override
  // TODO: implement textRed
  Color get textRed => Color(0xFFE83F5B);

  @override
  // TODO: implement eventTilePeople
  Color get eventTilePeople => Color(0xFFA4B2AE);

  @override
  // TODO: implement eventTileSubtitle
  Color get eventTileSubtitle => Color(0xFF666666);

  @override
  // TODO: implement eventTileTitle
  Color get eventTileTitle => Color(0xFFFF455250);

  @override
  // TODO: implement eventTitleMoney
  Color get eventTileMoney => Color(0xFF666666);

  @override
  // TODO: implement divider
  Color get divider => Color(0xFF666666);
}
