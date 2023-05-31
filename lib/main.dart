import 'package:flutter/material.dart';
import 'package:rentico/helpers/color_pallete.dart';
import 'package:rentico/screens/booking_form.dart';
import 'package:rentico/screens/home_screen.dart';

import 'screens/splash_screen.dart';

void main() {
  runApp(
    MaterialApp(
        theme: ThemeData(
          primarySwatch: ColorPallete.materialThemeColor,
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        debugShowCheckedModeBanner: false,
        home: const SplashScreen()
        ),
  );
}
