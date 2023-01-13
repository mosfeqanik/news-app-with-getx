import 'package:flutter/material.dart';

import 'colors.dart';

class Themes {
  Themes._();

  final lightTheme = ThemeData.light().copyWith(
    primaryColor: AppColors.primaryColor,
    cardColor: Colors.white,
    scaffoldBackgroundColor: Colors.grey[50],
    shadowColor: Colors.grey,
    backgroundColor: Colors.white,
    colorScheme:
        ColorScheme.fromSwatch().copyWith(secondary: AppColors.primaryColor),
    inputDecorationTheme: InputDecorationTheme(
      iconColor: AppColors.primaryColor,
      prefixIconColor: AppColors.primaryColor,
      suffixIconColor: AppColors.primaryColor,
      focusColor: AppColors.primaryColor,
      fillColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: Colors.grey),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: AppColors.primaryColor, width: 2.0),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(color: Colors.red, width: 2.0),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(color: Colors.red, width: 2.0),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: AppColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(
        color: Colors.white,
        fontStyle: FontStyle.italic,
        fontSize: 40,
      ),
      headline2: TextStyle(
        color: Colors.black,
        fontSize: 24,
        fontWeight: FontWeight.normal,
        fontFamily: 'Kalpurush',
      ),
      headline3: TextStyle(
        color: Colors.black,
        fontSize: 22,
        fontWeight: FontWeight.w700,
        fontFamily: 'Kalpurush',
      ),
      headline4: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.w700,
        fontFamily: 'Kalpurush',
      ),
      headline5: TextStyle(
        color: Color(0xFF686868),
        fontSize: 18,
        fontWeight: FontWeight.normal,
        fontFamily: 'Kalpurush',
      ),
      headline6: TextStyle(
        color: Color(0xFF686868),
        fontSize: 16,
        fontWeight: FontWeight.bold,
        fontFamily: 'Kalpurush',
      ),
      labelMedium: TextStyle(
        color: Color(0xFF686868),
        fontSize: 14,
        fontWeight: FontWeight.normal,
        fontFamily: 'Kalpurush',
      ),
      subtitle1: TextStyle(
        color: Color(0xFF686868),
        fontSize: 15,
        fontWeight: FontWeight.normal,
        fontFamily: 'Kalpurush',
      ),
      subtitle2: TextStyle(
        color: Color(0xFF686868),
        fontSize: 12,
        fontWeight: FontWeight.normal,
        fontFamily: 'Kalpurush',
      ),
      bodyText1: TextStyle(
        color: Color(0xFF686868),
        fontSize: 15,
        fontWeight: FontWeight.normal,
        fontFamily: 'Kalpurush',
      ),
      bodyText2: TextStyle(
        color: Colors.black,
        fontSize: 10,
        fontWeight: FontWeight.normal,
        fontFamily: 'Kalpurush',
      ),
      button: TextStyle(
        color: Colors.white,
        fontSize: 15,
        fontWeight: FontWeight.normal,
        fontFamily: 'Kalpurush',
      ),
    ),
  );
  static const TextStyle richText1TextStyle = TextStyle(
    color: Colors.white,
    fontStyle: FontStyle.italic,
    fontSize: 40,
  );
  static const TextStyle richText2TextStyle =
      TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 50);
  final darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.grey[900],
    cardColor: Colors.grey[900],
    scaffoldBackgroundColor: Colors.grey[800],
    shadowColor: Colors.grey,
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.grey[300]),
  );
}
