import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentico/helpers/color_pallete.dart';

class TextStyles {
  static TextStyle headingStyle = GoogleFonts.poppins(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    // color: ColorPallete.regularTextColor,
  );
  static TextStyle buttonTextStyle = GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );

  static TextStyle subHeadingStyle = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    // color: ColorPallete.subHeading,
  );

  static TextStyle subHeadingBoldStyle = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    // color: ColorPallete.subHeading,
  );

  static TextStyle dataTextStyle = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    // color: ColorPallete.dataTextColor,
  );
  static TextStyle inputTitleStyle = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    // color: ColorPallete.subHeading,
  );

  static TextStyle regularTextStyle = GoogleFonts.poppins(
    fontSize: 16,
    // color: ColorPallete.regularTextColor,
  );

  static TextStyle hintTextStyle = GoogleFonts.poppins(
    fontSize: 15,
    // color: ColorPallete.hintTextColor,
  );
}
