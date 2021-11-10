import 'package:designfitness/designfitness.dart';
import 'package:flutter/cupertino.dart';

class RobotoParagrafFont extends TextStyle {
  const RobotoParagrafFont({
    double fontSize: 16,
    Color color: AppColorScheme.COLOR_BLACK,
  }) : super(
          fontFamily: "Roboto",
          fontSize: fontSize,
          color: color,
        );
}

class RobotoSubtitlefFont extends TextStyle {
  const RobotoSubtitlefFont(
      {double fontSize: 18,
      Color color: AppColorScheme.COLOR_BLACK,
      FontWeight fontWeight: FontWeight.w600})
      : super(
            fontFamily: "Roboto",
            fontSize: fontSize,
            color: color,
            fontWeight: fontWeight);
}

class RobotoTitleFont extends TextStyle {
  const RobotoTitleFont(
      {double fontSize: 26,
      Color color: AppColorScheme.COLOR_BLACK,
      FontWeight fontWeight: FontWeight.w800})
      : super(
            fontFamily: "Roboto",
            fontSize: fontSize,
            color: color,
            fontWeight: fontWeight);
}

class RobotoAppBarFont extends TextStyle {
  const RobotoAppBarFont(
      {double fontSize: 18,
      Color color: AppColorScheme.COLOR_WHITE_FIT,
      FontWeight fontWeight: FontWeight.w800})
      : super(
            fontFamily: "Roboto",
            fontSize: fontSize,
            color: color,
            fontWeight: fontWeight);
}
