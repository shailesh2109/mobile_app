import 'package:flutter/material.dart';

abstract class Navigators {
  static goTo(BuildContext context, Widget page) =>
      Navigator.push(context, MaterialPageRoute(builder: (context) => page));

  static replaceAndGoTo(BuildContext context, Widget page) =>
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => page));

  static removeAndGoTo(BuildContext context, Widget page) =>
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (context) => page), ((route) => false));
}
