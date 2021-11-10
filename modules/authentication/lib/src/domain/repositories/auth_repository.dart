import 'package:authentication/src/data/models/auth_model.dart';
import 'package:authentication/src/domain/errors/errors.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<Failure, void>> login(AuthModel auth);
}