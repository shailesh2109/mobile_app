import 'package:flutter/material.dart';
import 'package:rentico/helpers/color_pallete.dart';
import 'package:rentico/helpers/text_style.dart';
import 'package:rentico/helpers/ui_helper.dart';

class CustomInputFieldWithTitle extends StatelessWidget {
  const CustomInputFieldWithTitle({
    super.key,
    this.optional = false,
    this.showTitle = true,
    this.title = "",
    this.allCaps = false,
    required this.hintText,
    this.isNumeric = false,
    required this.controller,
    this.showObscure = false,
  });
  final bool showTitle;

  final bool isNumeric;
  final String title;
  final String hintText;
  final bool allCaps;
  final bool optional;
  final bool showObscure;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
            visible: showTitle,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(title, style: TextStyles.inputTitleStyle),
                Visibility(
                    visible: !optional,
                    child: Text(" *",
                        style: TextStyles.inputTitleStyle.copyWith(
                            color: Colors.red,
                            fontWeight: FontWeight.w300,
                            fontSize: 15))),
              ],
            )),
        UIHelper.vMargin10,
        Container(
          padding: const EdgeInsets.only(left: 15),
          height: 50,
          decoration: UIHelper.inputFieldDecoration,
          child: TextFormField(
            textCapitalization: allCaps
                ? TextCapitalization.characters
                : TextCapitalization.words,
            keyboardType: isNumeric ? TextInputType.number : TextInputType.text,
            controller: controller,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: TextStyles.hintTextStyle),
          ),
        )
      ],
    );
  }
}
