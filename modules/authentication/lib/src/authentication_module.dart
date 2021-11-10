import 'package:authentication/src/presenter/login/login_module.dart';
import 'package:core/dependencies.dart';

class AuthenticationModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: LoginModule()),
      ];
}
