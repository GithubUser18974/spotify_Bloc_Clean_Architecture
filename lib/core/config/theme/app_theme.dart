import 'package:flutter/material.dart';
import 'package:spotify/core/config/theme/app_colour.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    primaryColor: AppColour.primaryColour,
    scaffoldBackgroundColor: AppColour.lightBackgroundColour,
    brightness: Brightness.light,
    fontFamily: "Satoshi",
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      hintStyle: TextStyle(
        color: Color(0xff383838),
        fontWeight: FontWeight.w500,
      ),
      fillColor: Colors.transparent,
      contentPadding: EdgeInsets.all(30),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            color: Colors.black,
            width: 0.4,
          )),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            color: Colors.white,
            width: 0.4,
          )),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: AppColour.primaryColour,
          elevation: 0,
          textStyle: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.normal),
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
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      hintStyle: TextStyle(
        color: Color(0xffa7a7a7),
        fontWeight: FontWeight.w500,
      ),
      fillColor: Colors.transparent,
      contentPadding: EdgeInsets.all(30),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            color: Colors.white,
            width: 0.4,
          )),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            color: Colors.white,
            width: 0.4,
          )),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: AppColour.primaryColour,
          elevation: 0,
          textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          )),
    ),
  );
}
