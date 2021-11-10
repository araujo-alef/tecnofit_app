import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../designfitness.dart';

class PanelAuthentication extends StatelessWidget {
  final String? title;
  final String? image;

  const PanelAuthentication({
    Key? key,
    this.title,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 100;

    return Column(
      children: [
        Container(
          height: height * 30,
          alignment: Alignment.bottomCenter,
          width: double.infinity,
          child: SvgPicture.asset(
            image!,
            height: height * 24,
          ),
        ),
        SizedBox(height: height * 2),
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          child: FitnessText(
            text: title!,
            variant: TextVariant.title,
          ),
        ),
      ],
    );
  }
}