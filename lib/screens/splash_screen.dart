import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rentico/helpers/asset_helper.dart';
import 'package:rentico/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () async {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomeScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xff00008A),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Center(
            child: Image.asset(AssetHelper.splashLogo),
          ),
        ),
      ),
    );
  }
}
