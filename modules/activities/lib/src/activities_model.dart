import 'package:core/dependencies.dart';

import 'presenter/my_activities/my_activities_module.dart';

class ActivitiesModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ModuleRoute('/', module: MyActivitiesModule()),
  ];
}
