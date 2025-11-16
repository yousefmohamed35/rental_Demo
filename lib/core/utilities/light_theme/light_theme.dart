import 'package:demorental/core/services/core_utilis/screen_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../resources/font/font_family_style.dart';
import 'light_colors.dart';

class MyCompoundLightTheme {
  static ThemeData lightTheme({
    required Locale locale,
  }) {
    return ThemeData(
      useMaterial3: false,
      // fontFamily: locale == englishLocale ? 'Poppins' : 'Inter',
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: Colors.white,
      platform: TargetPlatform.iOS,
      canvasColor: Colors.white,
      tabBarTheme: TabBarThemeData(
        indicatorSize: TabBarIndicatorSize.tab,
        labelColor: lightColorScheme.primary,
        labelStyle: FontFamilyStyle.standardTextStyleW700(
            fontSize: 14.toFont, locale: locale.languageCode),
        unselectedLabelStyle: FontFamilyStyle.standardTextStyleW700(
            fontSize: 14.toFont, locale: locale.languageCode),
        unselectedLabelColor: const Color(0xffBEBAB3),
        dividerColor: Colors.black,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: lightColorScheme.secondary.withOpacity(0.2),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          backgroundColor: lightColorScheme.secondary,
          textStyle: TextStyle(color: lightColorScheme.primary),
          side: BorderSide(width: 5.0, color: lightColorScheme.secondary),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
        textStyle: WidgetStateProperty.all(
            FontFamilyStyle.standardTextStyleW500(
                fontSize: 14.toFont, locale: locale.languageCode)),
      )),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: lightColorScheme.primary,
          backgroundColor: lightColorScheme.secondary,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          textStyle: TextStyle(
            color: lightColorScheme.primary,
          ),
        ),
      ),
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      textTheme: TextTheme(
        titleMedium: FontFamilyStyle.standardTextStyleW700(
            fontSize: 30.toFont, locale: locale.languageCode),
        titleSmall: FontFamilyStyle.standardTextStyleW700(
            fontSize: 25.toFont, locale: locale.languageCode),
        bodyMedium: FontFamilyStyle.standardTextStyleW700(
            fontSize: 17.toFont, locale: locale.languageCode),
        bodySmall: FontFamilyStyle.standardTextStyleW500(
            fontSize: 16.toFont, locale: locale.languageCode),
        bodyLarge: FontFamilyStyle.standardTextStyleW500(
            fontSize: 18.toFont, locale: locale.languageCode),
        titleLarge: FontFamilyStyle.standardTextStyleW700(
            fontSize: 32.toFont, locale: locale.languageCode),
        labelSmall: FontFamilyStyle.standardTextStyleW400(
            fontSize: 14.toFont, locale: locale.languageCode),
        labelMedium: FontFamilyStyle.standardTextStyleW500(
            fontSize: 18.toFont, locale: locale.languageCode),
      ),
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        },
      ),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: AppColors.secondaryColor,
        selectionColor: AppColors.secondaryColor,
        selectionHandleColor: AppColors.secondaryColor,
      ),
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      cupertinoOverrideTheme: const CupertinoThemeData(
        primaryColor: AppColors.primaryColor,
      ),
      dialogTheme: DialogThemeData(
        backgroundColor: lightColorScheme.surface,
        titleTextStyle: TextStyle(color: lightColorScheme.onSurface),
        contentTextStyle: TextStyle(color: lightColorScheme.onSurface),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
      ),
      appBarTheme: AppBarTheme(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        elevation: 0,
        centerTitle: true,
        // color: LightColors.primaryColor,
        actionsIconTheme: const IconThemeData(
          color: Colors.white,
        ),
        titleTextStyle: FontFamilyStyle.standardTextStyleW500(
                fontSize: 18.toFont, locale: locale.languageCode)
            .copyWith(color: Colors.white),
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.light,
        ),
        backgroundColor: Colors.transparent,
      ),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: FontFamilyStyle.standardTextStyleW500(
            fontSize: 12.toFont, locale: locale.languageCode),
        errorStyle: FontFamilyStyle.standardTextStyleW500(
            fontSize: 12.toFont,
            color: AppColors.errorColor,
            locale: locale.languageCode),
      ),
      dividerTheme: const DividerThemeData(
        color: AppColors.divider,
        thickness: 1.5,
      ),
      cardTheme: const CardThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: lightColorScheme.secondary,
        elevation: 3,
        foregroundColor: Colors.white,
        extendedPadding: const EdgeInsets.all(24),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        extendedTextStyle: FontFamilyStyle.standardTextStyleW500(
            fontSize: 14.toFont, locale: locale.languageCode),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        elevation: 12,
        backgroundColor: lightColorScheme.primary,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        elevation: 5.0,
        backgroundColor: lightColorScheme.primary,
        selectedItemColor: lightColorScheme.secondary,
        // unselectedItemColor: lightColorScheme.hintColor.withOpacity(0.09),
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      ),
      buttonTheme: ButtonThemeData(
        height: 56,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
        buttonColor: AppColors.secondaryColor,
      ),
      colorScheme: lightColorScheme.copyWith(error: AppColors.errorColor),
    );
  }
}