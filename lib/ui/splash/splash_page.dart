import 'package:flutter/material.dart';
import 'package:tokuapp/ui/home/home.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff04154b),
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              // border: Border.all(
              //   color: Colors.white, // Border color
              //   width: 4, // Border width
              // ),
            ),
            child: Image.asset(
              'assets/images/numbers/Home-Page-Thumbnail-1.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
