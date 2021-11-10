import 'package:designfitness/designfitness.dart';
import 'package:i18n/i18n.dart';
import 'package:authentication/authentication.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final LoginEntity user;

  const MyDrawer({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 100;
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            child: CircleAvatar(
              backgroundColor: AppColorScheme.COLOR_GRAY_FIT,
              radius: height * 6,
              child: Icon(
                Icons.person_rounded,
                size: height * 4,
              ),
            ),
          ),
          SizedBox(height: height * 4),
          Container(
            padding: EdgeInsets.only(top: 10),
            child: FitnessText(
              variant: TextVariant.subtitle,
              text: "Seus dados",
            ),
          ),
          Divider(),
          Container(
            padding: EdgeInsets.only(top: 10),
            child: FitnessText(variant: TextVariant.paragraf, text: user.email),
          ),
          Divider(),
          Expanded(
            child: Container(
              width: double.infinity,
              alignment: Alignment.bottomRight,
              child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.exit_to_app_rounded,
                    color: AppColorScheme.COLOR_BLACK_FIT,
                  ),
                  label: FitnessText(
                    variant: TextVariant.subtitle,
                    text:
                        "${S.of(context).exit.substring(0, 1).toUpperCase() + S.of(context).exit.substring(1)}",
                  ),
                  style: ElevatedButton.styleFrom(
                    shadowColor: AppColorScheme.COLOR_TRANSPARENT,
                    elevation: 0,
                    primary: AppColorScheme.COLOR_TRANSPARENT,
                  )),
            ),
          )
        ],
      ),
    ));
  }
}
