import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:sharedprefference/view/home_screen.dart/homescreen.dart';
import 'package:sharedprefference/view/login_screen/login_screen.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value) async {
      SharedPreferences pref = await SharedPreferences.getInstance();

      var name = pref.getString("name");
      var password = pref.getString("password");
      if (name == null ||
          name.isEmpty ||
          password == null ||
          password.isEmpty) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginScreen()),
        );
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 70,
              height: 70,
              child: Image.network(
                "http://pluspng.com/img-png/instagram-logo-eps-png-instagram-logo1-instagram-logo-1915.png",
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
