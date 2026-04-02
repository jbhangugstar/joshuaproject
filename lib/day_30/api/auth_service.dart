import 'package:joshuaproject/day_30/api/login_user.dart';
import 'package:joshuaproject/day_30/api/register_user.dart';
import 'package:joshuaproject/day_30/api/get_user.dart';
import 'package:joshuaproject/day_30/api/logout_user.dart';
import 'package:joshuaproject/day_30/api/update_user.dart';
import 'package:joshuaproject/day_30/model/login_model.dart';
import 'package:joshuaproject/day_30/model/register_user_model.dart';
import 'package:joshuaproject/day_30/model/get_user_model.dart';
import 'package:joshuaproject/day_30/model/update_user_model.dart';

class AuthService {
  static Future<LoginModel?> login({
    required String email,
    required String password,
  }) async {
    return await loginUser(email: email, password: password);
  }

  static Future<RegisterModel?> register({
    required String name,
    required String email,
    required String password,
  }) async {
    return await registerUser(name: name, email: email, password: password);
  }

  static Future<GetUserModel> getProfile() async {
    return await getUser();
  }

  static Future<void> logout() async {
    return await logoutUser();
  }

  static Future<UpdateUserModel> updateProfile({
    required String name,
    required String email,
  }) async {
    return await updateUser(name: name, email: email);
  }
}
