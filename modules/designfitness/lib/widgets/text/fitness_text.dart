import 'package:flutter/material.dart';

import 'variant_text.dart';

class FitnessText extends Text {
  final String text;
  final TextVariant? variant;

  FitnessText({
    required this.text,
    this.variant = TextVariant.paragraf,
  }) : super(text, style: variant!.styleText);
}
