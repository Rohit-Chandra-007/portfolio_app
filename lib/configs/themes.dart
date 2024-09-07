import 'package:flutter/material.dart';
import 'package:portfolio_app/configs/colors.dart';

var darkTheme = ThemeData(
  brightness: Brightness.dark,
  useMaterial3: true,
  colorScheme: ColorScheme.dark(
    primary: primaryColor,
    surface: background,
    primaryContainer: containerColor,
    onPrimaryContainer: labelColor,
    onSurface: fontColor,
  ),
  textTheme: TextTheme(
    headlineMedium: TextStyle(
        fontSize: 34,
        fontFamily: 'Console',
        color: fontColor,
        fontWeight: FontWeight.w700),
    bodyLarge: TextStyle(
        fontSize: 24,
        fontFamily: 'Console',
        color: fontColor,
        fontWeight: FontWeight.w700),
    bodyMedium: TextStyle(
        fontSize: 20,
        fontFamily: 'Console',
        color: fontColor,
        fontWeight: FontWeight.w400),
    labelMedium: TextStyle(
        fontSize: 16,
        fontFamily: 'Console',
        color: labelColor,
        fontWeight: FontWeight.w400),
  ),
);
