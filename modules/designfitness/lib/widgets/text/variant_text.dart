import 'package:designfitness/styles/app_text_theme.dart';
import 'package:flutter/material.dart';

enum TextVariant { title, subtitle, paragraf, appBar }

extension TypeTextVariant on TextVariant {
  TextStyle? get styleText {
    switch (this) {
      case TextVariant.title:
        return const RobotoTitleFont();
      case TextVariant.subtitle:
        return const RobotoSubtitlefFont();
      case TextVariant.paragraf:
        return const RobotoParagrafFont();
      case TextVariant.appBar:
        return const RobotoAppBarFont();
    }
  }
}
