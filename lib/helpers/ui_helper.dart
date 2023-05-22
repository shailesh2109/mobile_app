// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:rentico/helpers/color_pallete.dart';
import 'package:rentico/helpers/navigation_helper.dart';
import 'package:rentico/helpers/text_style.dart';
import 'package:url_launcher/url_launcher.dart';

import 'asset_helper.dart';

class UIHelper {
  static groupSortingComparator(value1, value2) {
    var dateTimeFormatV1 =
        DateFormat('dd MMM yyyy', 'en_US').parse(value1.toString());

    var dateTimeFormatV2 =
        DateFormat('dd MMM yyyy', 'en_US').parse(value2.toString());

    return dateTimeFormatV1.compareTo(dateTimeFormatV2);
  }

  static showLoader(context, {String title = "Validating"}) {
    showDialog(
      barrierDismissible: false,
      barrierColor: Colors.grey.withOpacity(0.5),
      context: context,
      builder: ((context) {
        return AlertDialog(
          scrollable: true,
          icon: Center(
            child: CircularProgressIndicator(),
          ),
          content: Center(
              child: Text(
            title,
            style: TextStyles.dataTextStyle,
          )),
        );
      }),
    );
  }

  static hideLoader(context) {
    Navigator.pop(context);
  }

  static appPadding() {
    return const EdgeInsets.symmetric(horizontal: 20);
  }

  static BoxShadow lightShadow = BoxShadow(
    color: Colors.grey.withOpacity(0.5),
    spreadRadius: 0,
    blurRadius: 20,
    offset: const Offset(0, 7), // changes position of shadow
  );

  static BoxDecoration inputFieldDecoration = BoxDecoration(
      color: Colors.white,
      border: Border.all(
        color: ColorPallete.black1,
      )
      // boxShadow: [
      //BoxShadow(
      //   color: Colors.grey.withOpacity(0.5),
      //   spreadRadius: 0,
      //   blurRadius: 20,
      //   offset: const Offset(0, 7), // changes position of shadow
      // )

      //]
      //
      );

  static SizedBox vMargin5 = const SizedBox(height: 5);
  static SizedBox vMargin10 = const SizedBox(height: 10);
  static SizedBox vMargin20 = const SizedBox(height: 20);
  static SizedBox vMargin30 = const SizedBox(height: 30);
  static SizedBox vMargin40 = const SizedBox(height: 40);
  static SizedBox vMargin50 = const SizedBox(height: 50);
  static SizedBox vMargin60 = const SizedBox(height: 60);

  static SizedBox hMargin10 = const SizedBox(width: 10);
  static SizedBox hMargin20 = const SizedBox(width: 20);
  static SizedBox hMargin30 = const SizedBox(width: 30);
  static SizedBox hMargin40 = const SizedBox(width: 40);
  static SizedBox hMargin50 = const SizedBox(width: 50);
  static SizedBox hMargin60 = const SizedBox(width: 60);

  Future showMessage(BuildContext context, String text,
      {Function? afterMessage,
      String title = "",
      AnimatedSnackBarType type = AnimatedSnackBarType.info}) async {
    // AnimatedSnackBar.rectangle(
    //   title,
    //   text,
    //   type: type,
    //   // brightness: Brightness.dark,
    // ).show(context);
    Timer(Duration(seconds: 2), (() {
      popMessenger(context);
      if (afterMessage != null) {
        afterMessage();
      }
    }));
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            insetPadding: EdgeInsets.zero,
            // backgroundColor:
            // getMessengerColor(type),
            // contentPadding: EdgeInsets.zero,
            scrollable: true,
            content: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  getMessengerIcon(type),
                  Text(title,
                      style: TextStyles.subHeadingBoldStyle
                          .copyWith(fontSize: 14)),
                  Row(
                    children: [
                      Spacer(),
                      Text(text,
                          style:
                              TextStyles.dataTextStyle.copyWith(fontSize: 14)),
                      Spacer(),
                    ],
                  ),
                ],
              ),
            ),

            // backgroundColor: getMessengerColor(type),
          );
        });
    // ScaffoldMessenger.of(context).showSnackBar(
    //   SnackBar(
    //     elevation: 10,
    //     behavior: SnackBarBehavior.floating,
    //     content: Text(text),
    //     duration: Duration(seconds: 2),
    //   ),
    // );
  }

  popMessenger(context) {
    Navigator.pop(context);
  }

  getMessengerIcon(AnimatedSnackBarType type) {
    switch (type) {
      case AnimatedSnackBarType.error:
        return Image.asset(
          AssetHelper.error,
          height: 80,
        );
      case AnimatedSnackBarType.success:
        return Image.asset(AssetHelper.success, height: 80);
      case AnimatedSnackBarType.info:
        return Image.asset(AssetHelper.info, height: 80);
      case AnimatedSnackBarType.warning:
        return Image.asset(AssetHelper.warning, height: 80);
    }
  }

  getMessengerColor(AnimatedSnackBarType type) {
    switch (type) {
      case AnimatedSnackBarType.error:
        return Colors.red[400];
      case AnimatedSnackBarType.success:
        return Colors.green[400];
      case AnimatedSnackBarType.info:
        return Colors.grey[400];
      case AnimatedSnackBarType.warning:
        return Colors.orange[300];
    }
  }

  static bool isStringNOE(String? value) {
    return value == null || value.trim().isEmpty;
  }

  static bool isListNOE(List<dynamic>? list) {
    return list == null || list.isEmpty;
  }

  static bool isMapNOE(Map<String, dynamic>? map) {
    return map == null || map.isEmpty;
  }

  static validateString(TextEditingController controller) {
    return !isStringNOE(controller.text);
  }

  static validatePhoneNumber(TextEditingController controller) {
    if (controller.text == null ||
        controller.text.isEmpty ||
        controller.text.trim().length != 10 ||
        RegExp('[a-zA-Z]').hasMatch(controller.text)) {
      return false;
    } else {
      return true;
    }
  }

  static Future<void> urlLauncher(String _url) async {
    if (!await launchUrl(
        Uri.parse(
          _url,
        ),
        mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $_url';
    }
  }
}
