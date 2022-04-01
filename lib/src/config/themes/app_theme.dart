import 'package:flutter/material.dart';
import 'package:recipely_app_v1/src/core/utils/constants.dart';
import '../../core/utils/app_color.dart';

class AppTheme {
  static ThemeData dark = ThemeData(
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: Colors.white,
        padding: const EdgeInsets.all(10),
        fixedSize: Size(100, 40),
        backgroundColor: Colors.blue[300],
        textStyle: TextStyle(fontSize: 16),
      ),
    ),
    brightness: Brightness.dark,
    primarySwatch: Colors.indigo,
    primaryColor: Colors.blue,
    accentColor: Colors.blueAccent,
    fontFamily: appFont,
    textTheme: TextTheme(
      bodyText1: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
    ),
  );

  static ThemeData light = ThemeData(
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: Colors.white,
        padding: const EdgeInsets.all(10),
        fixedSize: Size(100, 40),
        backgroundColor: Colors.blueGrey,
        textStyle: TextStyle(fontSize: 16),
      ),
    ),
    scaffoldBackgroundColor: AppColor.border,
    backgroundColor: AppColor.border,
    primaryColor: AppColor.black,
    brightness: Brightness.light,
    accentColor: Colors.blue,
    fontFamily: appFont,
    textTheme: TextTheme(
      bodyText1: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
    ),
  );
}
