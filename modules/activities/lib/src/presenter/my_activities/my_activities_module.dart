import 'package:core/dependencies.dart';

import 'my_activities_controller.dart';
import 'my_activities_page.dart';

class MyActivitiesModule extends Module {
  @override
  List<Bind<Object>> get binds => [Bind((i) => MyActivitiesController())];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (_, args) => MyActivitiesPage(
            user: args.data,
          ),
        ),
      ];
}
