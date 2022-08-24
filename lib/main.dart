import 'package:flutter/material.dart';
import 'package:la_vie_app/screens/LogIn.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Native Splash Screen';
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LogIn();
  }
}
