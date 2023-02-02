// To parse this JSON data, do
//
//     final loginResponse = loginResponseFromJson(jsonString);

import 'dart:convert';

import 'package:chat/models/usuario.dart';

LoginResponse loginResponseFromJson(String str) =>
    LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {
  LoginResponse({
    this.ok,
    this.user,
    this.token,
  });

  final bool? ok;
  final User? user;
  final String? token;

  LoginResponse copyWith({
    bool? ok,
    User? user,
    String? token,
  }) =>
      LoginResponse(
        ok: ok ?? this.ok,
        user: user ?? this.user,
        token: token ?? this.token,
      );

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        ok: json["ok"],
        user: json["user"] == null ? null : User.fromJson(json["user"]),
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "ok": ok,
        "user": user?.toJson(),
        "token": token,
      };
}
