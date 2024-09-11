import 'package:flutter/material.dart';
import 'package:tokuapp/ui/home/home.dart';
import 'package:tokuapp/ui/splash/splash_page.dart';

void main() {
  runApp(TokuApp());
}

class TokuApp extends StatelessWidget {
  const TokuApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
