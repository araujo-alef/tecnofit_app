import 'package:authentication/src/domain/errors/errors.dart';

abstract class LoginState {

}

class StartState implements LoginState {

}

class LoadingState implements LoginState {

}

class ErrorState implements LoginState {
  final Failure error;

  ErrorState(this.error,);
}

class SuccessState implements LoginState {
 
}