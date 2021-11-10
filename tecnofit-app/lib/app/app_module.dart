import 'package:activities/activities.dart';
import 'package:authentication/authentication.dart';
import 'package:core/dependencies.dart';

class AppModule extends Module {
  @override
 List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: AuthenticationModule()),
        ModuleRoute('/activitie', module: ActivitiesModule()),
      ];
}
