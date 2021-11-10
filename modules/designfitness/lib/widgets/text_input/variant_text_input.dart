import 'package:designfitness/designfitness.dart';
import 'package:designfitness/styles/app_color_scheme.dart';
import 'package:flutter/material.dart';

enum VariantTextInput { normal, secret }

extension TypeTextInputVariant on VariantTextInput {
  InputDecoration? styleTextInput(String hintText, IconData prefixIcon) {
    switch (this) {
      case VariantTextInput.normal:
        return InputDecoration(
          filled: true,
          fillColor: AppColorScheme.COLOR_WHITE,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: hintText,
          prefixIcon: Icon(
            prefixIcon,
            color: AppColorScheme.COLOR_BLUE_FIT,
          ),
        );
      case VariantTextInput.secret:
        return InputDecoration(
          filled: true,
          fillColor: AppColorScheme.COLOR_WHITE,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: hintText,
          prefixIcon: Icon(
            Icons.lock_rounded,
            color: AppColorScheme.COLOR_BLUE_FIT,
          ),
        );
    }
  }
}
