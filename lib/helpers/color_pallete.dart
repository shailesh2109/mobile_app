import 'dart:ui';

import 'package:flutter/material.dart';

abstract class ColorPallete {
  static const MaterialColor materialThemeColor = MaterialColor(0xff0B2687, {
    50: Color.fromRGBO(11, 38, 135, .1),
    100: Color.fromRGBO(11, 38, 135, .2),
    200: Color.fromRGBO(11, 38, 135, .3),
    300: Color.fromRGBO(11, 38, 135, .4),
    400: Color.fromRGBO(11, 38, 135, .5),
    500: Color.fromRGBO(11, 38, 135, .6),
    600: Color.fromRGBO(11, 38, 135, .7),
    700: Color.fromRGBO(11, 38, 135, .8),
    800: Color.fromRGBO(11, 38, 135, .9),
    900: Color.fromRGBO(11, 38, 135, 1),
  });
  static const Color themeColor = Color(0xff0B2687);
  static const Color textGrey = Color(0xff545454);
  static const Color black1 = Color.fromARGB(255, 58, 58, 58);
  static const Color background = Color(0xffF6F6F6);
}
