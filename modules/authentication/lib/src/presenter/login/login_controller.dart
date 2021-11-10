import 'package:authentication/src/data/models/auth_model.dart';
import 'package:authentication/src/domain/entities/login_entity.dart';
import 'package:authentication/src/domain/usecases/login_use_cases.dart';
import 'package:authentication/src/presenter/login/states/login_state.dart';
import 'package:core/dependencies.dart';
import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginController = _LoginController with _$LoginController;

abstract class _LoginController with Store {
  final LoginUseCase useCase;

  _LoginController(this.useCase);

  @observable
  LoginState loginState = StartState();

  @observable
  String email = "";

  @observable
  String password = "";

  @action
  setLoginState(LoginState state) => loginState = state;

  @action
  Function? addEmail(String value) {
    email = value;
  }

  @action
  Function? addPassword(String value) {
    password = value;
  }

  loginSuccesfullRedirect(context) {
    Modular.to.pushReplacementNamed('/activitie', arguments: LoginEntity(email: email, password: password));
  }

  Future<void> login(context) async {
    setLoginState(LoadingState());
    var response = await useCase(AuthModel(email: email, password: password));
    response.fold((l) async {
      setLoginState(ErrorState(l));
      await Future.delayed(const Duration(seconds: 3));
      setLoginState(StartState());
    }, (r) => loginSuccesfullRedirect(context));
  }
}
