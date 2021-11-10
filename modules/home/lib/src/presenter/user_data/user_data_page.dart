import 'package:core/dependencies.dart';
import 'package:designfitness/designfitness.dart';
import 'package:flutter/material.dart';

import 'user_data_controller.dart';

class UserDataPage extends StatefulWidget {
  const UserDataPage({Key? key}) : super(key: key);

  @override
  _UserDataPageState createState() => _UserDataPageState();
}

class _UserDataPageState extends ModularState<UserDataPage, UserDataController> {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColorScheme.COLOR_WHITE_FIT,
      body: Center(
        child: Text('User Data Page'),
      )
    );
  }
}
