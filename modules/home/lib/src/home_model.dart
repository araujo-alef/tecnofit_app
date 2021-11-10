import 'package:core/dependencies.dart';

import 'presenter/user_data/user_data_module.dart';

class HomeModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ModuleRoute('/', module: UserDataModule()),
  ];
}
