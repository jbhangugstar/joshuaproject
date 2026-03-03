import 'package:flutter/material.dart';
import 'package:joshuaproject/Day_16/Day_17_18/Database/preference.dart';
import 'package:joshuaproject/Day_16/Day_17_18/View/login_screen.dart';
import 'package:joshuaproject/Extansion/navigator.dart';
import 'package:joshuaproject/day_14/drawer_global.dart';

class SplashScreenDay16 extends StatefulWidget {
  const SplashScreenDay16({super.key});

  @override
  State<SplashScreenDay16> createState() => _SplashScreenDay16State();
}

class _SplashScreenDay16State extends State<SplashScreenDay16> {
  @override
  void initState() {
    super.initState();
    autoLogin();
  }

  void autoLogin() async {
    await Future.delayed(Duration(seconds: 3));
    bool? data = await PreferenceHandler.getIsLogin();
    print(data);
    print("Hai, Joshua");
    if (data == true) {
      context.pushAndRemoveAll(DrawerGlobalTugas9());
    } else {
      context.pushAndRemoveAll(LoginScreenDay16());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Image.asset("assets/images/logo.jpeg")],
      ),
    );
  }
}
