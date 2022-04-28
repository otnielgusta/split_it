import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_theme.dart';

abstract class AppTextStyles {
  TextStyle get title;
  TextStyle get button;
  TextStyle get name;
  TextStyle get inter14_400;
  TextStyle get inter20_600_green;
  TextStyle get inter20_600_red;

  TextStyle get eventTileTitle;
  TextStyle get eventTileSubtitle;
  TextStyle get eventTileMoney;
  TextStyle get eventTilePeople;

  TextStyle get stepperIndicatorPrimary;
  TextStyle get stepperIdicatorSecondary;

  TextStyle get stepperButtonsActive;
  TextStyle get stepperButtonsDisable;

  TextStyle get stepperTitle;
  TextStyle get stepperSubtitle;
  TextStyle get hintTextFild;
  TextStyle get textField;
  TextStyle get personTileName;
  TextStyle get personTileNameBold;
  TextStyle get info;
  TextStyle get addButton;
}

class AppTextStylesDefault implements AppTextStyles {
  @override
  // TODO: implement button
  TextStyle get button => GoogleFonts.inter(
        fontStyle: FontStyle.normal,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.button,
      );

  @override
  // TODO: implement title
  TextStyle get title => GoogleFonts.montserrat(
      fontSize: 40,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
      color: AppTheme.colors.title);

  @override
  // TODO: implement name
  TextStyle get name => GoogleFonts.montserrat(
      fontSize: 24,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
      color: AppTheme.colors.backgroundPrimary);

  @override
  // TODO: implement inter14
  TextStyle get inter14_400 => GoogleFonts.inter(
        fontStyle: FontStyle.normal,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.button,
      );

  @override
  // TODO: implement inter20
  TextStyle get inter20_600_green => GoogleFonts.inter(
        fontStyle: FontStyle.normal,
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: AppTheme.colors.title,
      );

  @override
  // TODO: implement inter20_600_red
  TextStyle get inter20_600_red => GoogleFonts.inter(
        fontStyle: FontStyle.normal,
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: AppTheme.colors.textRed,
      );

  @override
  // TODO: implement eventTilePeople
  TextStyle get eventTilePeople => GoogleFonts.inter(
        color: AppTheme.colors.eventTilePeople,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      );

  @override
  // TODO: implement eventTileSubtitle
  TextStyle get eventTileSubtitle => GoogleFonts.inter(
        color: AppTheme.colors.eventTileSubtitle,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      );

  @override
  // TODO: implement eventTileTitle
  TextStyle get eventTileTitle => GoogleFonts.inter(
        fontSize: 16,
        color: AppTheme.colors.eventTileTitle,
        fontWeight: FontWeight.w600,
      );

  @override
  // TODO: implement eventTitleMoney
  TextStyle get eventTileMoney => GoogleFonts.inter(
        color: AppTheme.colors.eventTileMoney,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      );

  @override
  // TODO: implement roboto_400_14
  TextStyle get stepperIndicatorPrimary => GoogleFonts.roboto(
        color: AppTheme.colors.stepperIndicatorPrimary,
        fontSize: 14,
        fontWeight: FontWeight.w700,
      );

  @override
  // TODO: implement stepperIdicatorSecondary
  TextStyle get stepperIdicatorSecondary => GoogleFonts.roboto(
        color: AppTheme.colors.stepperIdicatorSecondary,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      );

  @override
  // TODO: implement stepperButtonsActive
  TextStyle get stepperButtonsActive => GoogleFonts.inter(
        color: AppTheme.colors.buttonsActive,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      );

  @override
  // TODO: implement stepperButtonsDisable
  TextStyle get stepperButtonsDisable => GoogleFonts.inter(
        color: AppTheme.colors.buttonsDisable,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      );

  @override
  // TODO: implement stepperSubtitle
  TextStyle get stepperSubtitle => GoogleFonts.inter(
        color: AppTheme.colors.stepperSubtitle,
        fontSize: 24,
        fontWeight: FontWeight.w400,
      );

  @override
  // TODO: implement stepperTitle
  TextStyle get stepperTitle => GoogleFonts.inter(
        color: AppTheme.colors.stepperTitle,
        fontSize: 24,
        fontWeight: FontWeight.w700,
      );

  @override
  // TODO: implement hintTextFild
  TextStyle get hintTextFild => GoogleFonts.inter(
        color: AppTheme.colors.hintTextFild,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      );

  @override
  // TODO: implement textField
  TextStyle get textField => GoogleFonts.inter(
        color: AppTheme.colors.textField,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      );

  @override
  // TODO: implement personTileName
  TextStyle get personTileName => GoogleFonts.inter(
        color: AppTheme.colors.textField,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      );
  @override
  // TODO: implement personTileName
  TextStyle get personTileNameBold => GoogleFonts.inter(
        color: AppTheme.colors.eventTileTitle,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      );

  @override
  // TODO: implement textField
  TextStyle get info => GoogleFonts.inter(
        color: AppTheme.colors.hintTextFild,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      );

  @override
  // TODO: implement textField
  TextStyle get addButton => GoogleFonts.inter(
        color: AppTheme.colors.backgroundIconGreen,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      );
}
