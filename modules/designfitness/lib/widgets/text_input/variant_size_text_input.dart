enum VariantSizeTextInput {
  small,
  mediun,
  large,
}

extension TypeVariantSizeTextInput on VariantSizeTextInput {
  double? get heigth {
    switch (this) {
      case VariantSizeTextInput.small:
        return 32.00;
      case VariantSizeTextInput.mediun:
        return 52.00;
      case VariantSizeTextInput.large:
        return 72.00;
    }
  }
}
