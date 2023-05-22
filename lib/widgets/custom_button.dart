import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:rentico/helpers/text_style.dart';

class Button extends StatelessWidget {
  Button({super.key, required this.buttonName});
  final String buttonName;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: Padding(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: Text(buttonName, style: TextStyles.buttonTextStyle),
        ));
  }
}
