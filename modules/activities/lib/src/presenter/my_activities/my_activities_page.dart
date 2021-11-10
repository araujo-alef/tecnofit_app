import 'package:authentication/authentication.dart';
import 'package:core/dependencies.dart';
import 'package:designfitness/designfitness.dart';
import 'package:flutter/material.dart';
import 'package:i18n/i18n.dart';

import 'my_activities_controller.dart';

class MyActivitiesPage extends StatefulWidget {
  final LoginEntity user;

  const MyActivitiesPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  _MyActivitiesPageState createState() => _MyActivitiesPageState();
}

class _MyActivitiesPageState
    extends ModularState<MyActivitiesPage, MyActivitiesController> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 100;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColorScheme.COLOR_TRANSPARENT,
        elevation: 0,
        iconTheme: const IconThemeData(color: AppColorScheme.COLOR_BLACK_FIT),
        title: FitnessText(
          variant: TextVariant.appBar,
          text:
              "${S.of(context).my_s.substring(0, 1).toUpperCase() + S.of(context).my_s.substring(1)} ${S.of(context).activities}",
        ),
      ),
      drawer: Drawer(
        child: MyDrawer(user: widget.user),
      ),
      backgroundColor: AppColorScheme.COLOR_WHITE_FIT,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FitnessText(
              variant: TextVariant.subtitle,
              text:
                  "${S.of(context).here.substring(0, 1).toUpperCase() + S.of(context).here.substring(1)} ${S.of(context).will_be} ${S.of(context).your_s} ${S.of(context).next_s} ${S.of(context).activities}",
            ),
            SizedBox(height: height * 2),
            Container(
              height: height * 16,
              alignment: Alignment.bottomCenter,
              width: double.infinity,
              child: SvgPicture.asset(
                "packages/designfitness/assets/images/activities.svg",
                height: height * 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
