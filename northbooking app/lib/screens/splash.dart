import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(),

        alignment: Alignment.center, // Center align the child
        child: Image.asset(
          "assets/images/logo.png",
          width: 100,
        ),
      ),
    );
  }
}
