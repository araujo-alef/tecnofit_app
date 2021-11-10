import 'package:authentication/src/data/data_sources/auth_data_source.dart';
import 'package:authentication/src/data/repositories/auth_repository.dart';
import 'package:authentication/src/domain/usecases/login_use_cases.dart';
import 'package:authentication/src/presenter/login/login_page.dart';
import 'package:core/dependencies.dart';

import 'login_controller.dart';

class LoginModule extends Module {
  @override
  List<Bind<Object>> get binds => [
    Bind((i) => Dio()),
    Bind((i) => LoginController(i())),
    Bind((i) => AuthDatasourceImpl(i())),
    Bind((i) => AuthRepositoryImpl(i())),
    Bind((i) => LoginUseCaseImpl(i())),
  ];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (_, args) => const LoginPage()),
  ];
}