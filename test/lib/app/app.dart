import 'package:flutter/material.dart';
import 'package:test/screen/splash_screen.dart';
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "class Test",
      home: SplashScreen(),
    );
  }
}
