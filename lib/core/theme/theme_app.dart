import 'package:flutter/material.dart';
import 'package:new_experinse/core/resource/color_manger.dart';
import 'package:new_experinse/core/resource/font_manger.dart';

//! them app use this is for (dark theme or light theme switched)
final appTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    centerTitle: true,
  ),
  colorScheme: const ColorScheme.light(
    primary: AppColorManger.primaryColor,
  ),
  dialogBackgroundColor: AppColorManger.whiteColor,
  textTheme: TextTheme(
    bodyLarge: TextStyle(
      fontWeight: FontWeightManger.fontWeightBold,
      fontSize: FontSizeManger.s19,
      color: AppColorManger.blackColor,
    ),
    bodyMedium: TextStyle(
      fontWeight: FontWeightManger.fontWeightSemiBold,
      fontSize: FontSizeManger.s16,
      color: AppColorManger.blackColor,
    ),
    headlineLarge: TextStyle(
      fontWeight: FontWeightManger.fontWeightBold,
      fontSize: FontSizeManger.s17,
      color: AppColorManger.primaryColor,
    ),
    bodySmall: TextStyle(
      fontWeight: FontWeightManger.fontWeightRagular,
      fontSize: FontSizeManger.s15,
      color: AppColorManger.whiteColor,
    ),
    labelLarge: TextStyle(
      fontWeight: FontWeightManger.fontWeightBold,
      fontSize: FontSizeManger.s18,
      color: AppColorManger.whiteColor,
    ),
    labelMedium: TextStyle(
      fontSize: FontSizeManger.s16,
      color: AppColorManger.blackColor,
    ),
    displayMedium: TextStyle(
        fontWeight: FontWeightManger.fontWeightSemiBold,
        fontSize: FontSizeManger.s17,
        color: AppColorManger.whiteColor),
    titleLarge: TextStyle(
        fontWeight: FontWeightManger.fontWeightBold,
        fontSize: FontSizeManger.s18,
        color: AppColorManger.whiteColor),
  ),
);
