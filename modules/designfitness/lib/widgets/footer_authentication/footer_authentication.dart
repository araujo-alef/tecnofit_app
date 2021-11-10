import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../designfitness.dart';

class FooterAuthentication extends StatelessWidget {
  final String mainText;
  final String hiperText;
  final String? navigationPage;

  const FooterAuthentication({
    Key? key,
    required this.mainText,
    required this.hiperText,
    this.navigationPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.only(bottom: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FitnessText(
            text: mainText,
          ),
          FitnessButton(
            text: hiperText,
            onPressed: () => navigationPage == "../" ? Modular.to.pop() : Modular.to.pushNamed(navigationPage!),
            variant: ButtonVariant.tertiary,
          ),
        ],
      ),
    );
  }
}
