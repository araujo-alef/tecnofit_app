import 'package:flutter/material.dart';

import 'variant_button.dart';
import 'variant_size_button.dart';

class FitnessButton extends StatelessWidget {
  final String text;
  final ButtonVariant variant;
  final VariantSizeButton? variantSize;
  final Function() onPressed;

  const FitnessButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.variant,
    this.variantSize = VariantSizeButton.mediun,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: variantSize!.heigth,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: variant.styleText,
        ),
        style: variant.styleButton,
      ),
    );
  }
}
