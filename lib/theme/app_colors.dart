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
  Color get dividerWithOpacity;

  Color get stepperIndicatorPrimary;
  Color get stepperIdicatorSecondary;
  Color get backButton;
  Color get buttonsActive;
  Color get buttonsDisable;

  Color get stepperTitle;
  Color get stepperSubtitle;
  Color get hintTextFild;
  Color get textField;
  Color get inputBorder;
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

  @override
  // TODO: implement stepperIdicatorSecondary
  Color get stepperIdicatorSecondary => Color(0xFF666666);

  @override
  // TODO: implement stepperindicatorPrimary
  Color get stepperIndicatorPrimary => Color(0xFF42BD8F);

  @override
  // TODO: implement backButton
  Color get backButton => Color(0xFF666666);

  @override
  // TODO: implement dividerWithOpacity
  Color get dividerWithOpacity => Color(0xFF666666).withOpacity(0.2);

  @override
  // TODO: implement buttonsDisable
  Color get buttonsDisable => Color(0xFF455250).withOpacity(0.2);

  @override
  // TODO: implement buttonsActive
  Color get buttonsActive => Color(0xFF455250);

  @override
  // TODO: implement stepperSubtitle
  Color get stepperSubtitle => Color(0xFF455250);

  @override
  // TODO: implement stepperTitle
  Color get stepperTitle => Color(0xFF455250);

  @override
  // TODO: implement hintTextFild
  Color get hintTextFild => Color(0xFF666666);

  @override
  // TODO: implement textField
  Color get textField => Color(0xFF455250);

  @override
  // TODO: implement inputBorder
  Color get inputBorder => Color(0xFF455250).withOpacity(0.2);
}
