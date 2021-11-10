import 'package:core/dependencies.dart';
import 'package:flutter/cupertino.dart';

import 'app/app_module.dart';
import 'app/app_widget.dart';

void main() => runApp(ModularApp(module: AppModule(), child: const AppWidget()));