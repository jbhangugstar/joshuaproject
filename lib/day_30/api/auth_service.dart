import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../model/login_model.dart';
import '../model/register_user_model.dart';
import '../model/get_user_model.dart';
import '../model/update_user_model.dart';

class AuthService {
  static const String baseUrl = 'https://absensib1.mobileproj.com/api';

  static Future<RegisterModel> register({
    required String name,
    required String email,
    required String password,
  }) async {
    final response = await http.post(
      Uri.parse('$baseUrl/register'),
      headers: {'Accept': 'application/json'},
      body: {'name': name, 'email': email, 'password': password},
    );

    final data = jsonDecode(response.body);
    return RegisterModel.fromJson(data);
  }

  static Future<LoginModel> login({
    required String email,
    required String password,
  }) async {
    final response = await http.post(
      Uri.parse('$baseUrl/login'),
      headers: {'Accept': 'application/json'},
      body: {'email': email, 'password': password},
    );

    final data = jsonDecode(response.body);
    final result = LoginModel.fromJson(data);

    if (result.token != null) {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('token', result.token!);
    }

    return result;
  }

  static Future<String?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }

  static Future<GetUserModel> getProfile() async {
    final token = await getToken();

    final response = await http.get(
      Uri.parse('$baseUrl/user'),
      headers: {'Accept': 'application/json', 'Authorization': 'Bearer $token'},
    );

    final data = jsonDecode(response.body);
    return GetUserModel.fromJson(data);
  }

  static Future<UpdateUserModel> updateProfile({
    required String name,
    required String email,
  }) async {
    final token = await getToken();

    final response = await http.put(
      Uri.parse('$baseUrl/user'),
      headers: {'Accept': 'application/json', 'Authorization': 'Bearer $token'},
      body: {'name': name, 'email': email},
    );

    final data = jsonDecode(response.body);
    return UpdateUserModel.fromJson(data);
  }

  static Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('token');
  }
}
