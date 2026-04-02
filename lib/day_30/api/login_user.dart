import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:joshuaproject/day_30/api/endpoint.dart';
import 'package:joshuaproject/day_30/api/token_helper.dart';
import 'package:joshuaproject/day_30/model/login_model.dart';

Future<LoginModel?> loginUser({
  required String email,
  required String password,
}) async {
  final response = await http.post(
    Uri.parse(Endpoint.login),
    headers: {"Accept": "application/json"},
    body: {"email": email, "password": password},
  );

  log(response.body);

  if (response.statusCode == 200) {
    final result = LoginModel.fromJson(json.decode(response.body));

    if (result.data != null) {
      await saveToken(result.data!.token!);
    }

    return result;
  } else {
    final error = LoginModel.fromJson(json.decode(response.body));
    log(error.toString());

    throw Exception(error.message ?? "Login gagal");
  }
}
