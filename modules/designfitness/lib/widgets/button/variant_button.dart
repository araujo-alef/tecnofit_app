import 'package:designfitness/designfitness.dart';
import 'package:designfitness/styles/app_color_scheme.dart';
import 'package:designfitness/styles/app_text_theme.dart';
import 'package:flutter/material.dart';

enum ButtonVariant {
  primary,
  second,
  tertiary,
}

extension TypeButtonVariant on ButtonVariant {
  ButtonStyle? get styleButton {
    switch (this) {
      case ButtonVariant.primary:
        return TextButton.styleFrom(
            backgroundColor: AppColorScheme.COLOR_BLUE_FIT,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50)));
      case ButtonVariant.second:
        return TextButton.styleFrom(
          backgroundColor: AppColorScheme.COLOR_WHITE,
        );
      case ButtonVariant.tertiary:
        return TextButton.styleFrom(
            backgroundColor: AppColorScheme.COLOR_TRANSPARENT);
    }
  }

  TextStyle? get styleText {
    switch (this) {
      case ButtonVariant.primary:
        return const RobotoSubtitlefFont(color: AppColorScheme.COLOR_WHITE);
      case ButtonVariant.second:
        return const RobotoParagrafFont(color: AppColorScheme.COLOR_RED);
      case ButtonVariant.tertiary:
        return const RobotoParagrafFont(color: AppColorScheme.COLOR_BLUE_FIT);
    }
  }
}
