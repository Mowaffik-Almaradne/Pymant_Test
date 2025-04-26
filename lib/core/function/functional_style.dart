import 'package:flutter/material.dart';

class FunctionalStyle {
  //? Function use for Form Filed :
  static OutlineInputBorder outlineInputBorder(
      {double width = 0,
      Color color = Colors.transparent,
      double circular = 3}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(circular),
      borderSide: BorderSide(width: width, color: color),
    );
  }
}
