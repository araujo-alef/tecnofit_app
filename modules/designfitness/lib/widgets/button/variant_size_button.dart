enum VariantSizeButton { small, mediun, large }

extension TypeVariantSizeButton on VariantSizeButton {
  double? get heigth {
    switch (this) {
      case VariantSizeButton.small:
        return 32.00;
      case VariantSizeButton.mediun:
        return 52.00;
      case VariantSizeButton.large:
        return 72.00;
    }
  }
}
