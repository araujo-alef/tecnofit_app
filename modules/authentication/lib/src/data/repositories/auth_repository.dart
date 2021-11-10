import 'package:authentication/src/data/data_sources/auth_data_source.dart';
import 'package:authentication/src/data/models/auth_model.dart';
import 'package:dartz/dartz.dart';
import 'package:authentication/src/domain/errors/errors.dart';
import 'package:authentication/src/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthDatasource datasource;

  AuthRepositoryImpl(this.datasource);

  @override
  Future<Either<Failure, void>> login(AuthModel auth) async {
    try {
      var data = await datasource.login(auth);
      if (data == null) {
        return const Right(null);
      } else {
        return Left(ErrorAuth(message: data));
      }
    } catch (e) {
      return Left(ErrorAuth());
    }
  }
}
