import 'package:flutter/material.dart';
import 'package:sharedprefference/view/splash_screen.dart/splashscreen.dart';
//create Instagram ui clone with shared preference login?
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Splash(),);
  }
}
