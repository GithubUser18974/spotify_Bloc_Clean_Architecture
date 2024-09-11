import 'package:flutter/material.dart';
import 'package:spotify/core/config/theme/app_colour.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    primaryColor: AppColour.primaryColour,
    scaffoldBackgroundColor: AppColour.lightBackgroundColour,
    brightness: Brightness.light,
    fontFamily: "Satoshi",
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: AppColour.primaryColour,
          textStyle: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          )),
    ),
  );
  static final darkTheme = ThemeData(
    primaryColor: AppColour.primaryColour,
    scaffoldBackgroundColor: AppColour.darkBackgroundColour,
    brightness: Brightness.dark,
    fontFamily: "Satoshi",
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: AppColour.primaryColour,
          textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          )),
    ),
  );
}
