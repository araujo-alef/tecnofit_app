import 'package:designfitness/styles/app_text_theme.dart';
import 'package:designfitness/widgets/text_input/variant_size_text_input.dart';
import 'package:flutter/material.dart';

import '../../designfitness.dart';
import 'variant_text_input.dart';

class FitnessTextInput extends StatefulWidget {
  final IconData prefixIcon;
  final IconData? sufixIcon;
  final String? hintText;
  final VariantTextInput variant;
  final VariantSizeTextInput? variantSize;
  final Function? onChanged;
  final Function? validator;

  const FitnessTextInput({
    Key? key,
    required this.hintText,
    required this.prefixIcon,
    this.sufixIcon,
    required this.variant,
    this.variantSize = VariantSizeTextInput.mediun,
    this.onChanged,
    this.validator,
  }) : super(key: key);

  @override
  State<FitnessTextInput> createState() => _FitnessTextInputState();
}

class _FitnessTextInputState extends State<FitnessTextInput> {
  late bool isObscure =
      widget.variant == VariantTextInput.secret ? true : false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            validator: (value) => widget.validator!(value),
            onChanged: (value) {
              widget.onChanged!(value);
            },
            obscureText: isObscure,
            cursorColor: AppColorScheme.COLOR_BLUE_FIT,
            style: const RobotoParagrafFont(
              color: AppColorScheme.COLOR_BLACK_FIT,
            ),
            decoration: widget.variant.styleTextInput(
              widget.hintText!,
              widget.prefixIcon,
            ),
          ),
        ),
        widget.variant == VariantTextInput.secret
            ? InkWell(
                onTap: () {
                  setState(() {
                    isObscure = !isObscure;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Icon(
                    widget.sufixIcon,
                    color: AppColorScheme.COLOR_GRAY_FIT,
                  ),
                ),
              )
            : SizedBox()
      ],
    );
  }
}
