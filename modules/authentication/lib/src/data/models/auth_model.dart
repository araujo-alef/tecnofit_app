import 'dart:convert';

import 'package:authentication/src/domain/entities/login_entity.dart';

class AuthModel extends LoginEntity {
  final String email;
  final String password;

  const AuthModel({
    required this.email,
    required this.password,
  }) : super(email: email, password: password);

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'password': password,
    };
  }

  static AuthModel fromMap(Map<String, dynamic> map) {
    return AuthModel(
      email: map['email'],
      password: map['password'],
    );
  }

  String toJson() => json.encode(toMap());

  static AuthModel fromJson(String source) => fromMap(json.decode(source));
}