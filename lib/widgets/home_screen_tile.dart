// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../helpers/color_pallete.dart';

class HomeScreenTile extends StatelessWidget {
  const HomeScreenTile({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.onTap,
  }) : super(key: key);
  final String title;
  final String subTitle;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              spreadRadius: 0.2,
              blurRadius: 10,
              color: Colors.grey.shade400,
              offset: const Offset(1, 2))
        ]),
        child: ListTile(
          title: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Text(
              title,
              style: GoogleFonts.roboto(
                color: ColorPallete.themeColor,
                fontSize: 24,
              ),
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0),
            child: Text(
              subTitle,
              style: GoogleFonts.roboto(
                color: ColorPallete.textGrey,
                fontSize: 18,
              ),
            ),
          ),
          isThreeLine: true,
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: ColorPallete.themeColor,
          ),
        ),
      ),
    );
  }
}
