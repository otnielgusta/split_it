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
}
