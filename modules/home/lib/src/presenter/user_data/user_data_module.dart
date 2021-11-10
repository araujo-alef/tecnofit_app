import 'package:core/dependencies.dart';

import 'user_data_controller.dart';
import 'user_data_page.dart';

class UserDataModule extends Module {
  @override
  List<Bind<Object>> get binds => [
    Bind((i) => UserDataController())
  ];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (_, args) => const UserDataPage()),
  ];
}