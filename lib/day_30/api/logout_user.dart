import 'package:joshuaproject/day_30/api/token_helper.dart';

Future<void> logoutUser() async {
  await removeToken();
}
