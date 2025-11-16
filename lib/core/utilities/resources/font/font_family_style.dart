import 'package:flutter/material.dart';

import '../../../constants/themeing/themes_contants.dart';

//This class methods return the TextStyle object with specific font weight and other styles.
class FontFamilyStyle {
  FontFamilyStyle._();
  static TextStyle standardTextStyleW500(
          {required double fontSize,
          required String locale,
          Color color = Colors.black,
          double lineHeight = 1.25}) =>
      TextStyle(
        color: color,
        fontWeight: FontWeight.w500,
        fontFamily: locale == 'ar'
            ? ThemesConstant.dinFontFamily
            : ThemesConstant.fontFamily,
        fontSize: fontSize,
        height: lineHeight,
        letterSpacing: 0.0,
      );

  static TextStyle standardTextStyleW700(
          {required double fontSize,
          required String locale,
          Color color = Colors.black,
          double lineHeight = 1.25}) =>
      TextStyle(
        color: color,
        fontWeight: FontWeight.w700,
        fontFamily: locale == 'ar'
            ? ThemesConstant.dinFontFamily
            : ThemesConstant.fontFamily,
        fontSize: fontSize,
        letterSpacing: 0.0,
        height: lineHeight,
      );

  static TextStyle standardTextStyleW400(
          {required double fontSize,
          required String locale,
          Color color = Colors.black,
          double lineHeight = 1.25}) =>
      TextStyle(
        color: color,
        fontWeight: FontWeight.w400,
        fontFamily: locale == 'ar'
            ? ThemesConstant.dinFontFamily
            : ThemesConstant.fontFamily,
        fontSize: fontSize,
        letterSpacing: 0.0,
        height: lineHeight,
      );
}