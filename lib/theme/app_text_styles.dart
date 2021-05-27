import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_theme.dart';

abstract class AppTextStyles {
  TextStyle get title;
  TextStyle get button;
}

class AppTextStylesDefault implements AppTextStyles {
  @override
  // TODO: implement button
  TextStyle get button => GoogleFonts.inter(
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
}
