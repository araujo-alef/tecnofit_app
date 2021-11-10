import 'package:authentication/src/data/models/auth_model.dart';
import 'package:authentication/src/domain/errors/errors.dart';
import 'package:dartz/dartz.dart';
import 'package:authentication/src/domain/repositories/auth_repository.dart';

mixin LoginUseCase {
  Future<Either<Failure, void>> call(AuthModel auth);
}

class LoginUseCaseImpl implements LoginUseCase {
  final AuthRepository repository;

  LoginUseCaseImpl(this.repository);

  @override
  Future<Either<Failure, void>> call(AuthModel auth) {
    return repository.login(auth);
  }
}