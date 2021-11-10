import 'package:designfitness/designfitness.dart';
import 'package:flutter/material.dart';

class AppThemeData {
  static final ThemeData themeData = ThemeData(
      primarySwatch: Colors.blue,
      brightness: Brightness.light,
      fontFamily: "Roboto",
      iconTheme: const IconThemeData(color: AppColorScheme.COLOR_BLUE_FIT));
}
