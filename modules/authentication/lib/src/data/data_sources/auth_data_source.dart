import 'package:authentication/src/data/models/auth_model.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:core/dependencies.dart';

abstract class AuthDatasource {
  Future<String?>? login(AuthModel auth);
}

class AuthDatasourceImpl implements AuthDatasource {
  final Dio dio;
  final String baseUrl = "https://reqres.in/api/login";

  AuthDatasourceImpl(this.dio);

  @override
  Future<String?>? login(AuthModel auth) async {
    var response = await dio.post(baseUrl, data: auth.toJson());
    if (response.statusCode == 200) {
      const storage = FlutterSecureStorage();
      await storage.write(key: "token", value: response.data['token']);
      return null;
    } else {
      return response.data['error'];
    }
  }
}
