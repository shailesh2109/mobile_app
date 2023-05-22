import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:rentico/helpers/color_pallete.dart';
import 'package:rentico/helpers/strings.dart';
import 'package:rentico/helpers/ui_helper.dart';
import 'package:rentico/widgets/custom_input_field.dart';

import '../widgets/custom_button.dart';

class BookingForm extends StatefulWidget {
  const BookingForm({super.key});

  @override
  State<BookingForm> createState() => _BookingFormState();
}

class _BookingFormState extends State<BookingForm> {
  TextEditingController nameController = new TextEditingController();
  TextEditingController phoneController = new TextEditingController();
  TextEditingController nationalityController = new TextEditingController();
  TextEditingController licenseController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(Strings.makeBooking),
          automaticallyImplyLeading: true,
        ),
        body: Container(
          color: ColorPallete.background,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: ListView(
            children: [
              CustomInputFieldWithTitle(
                  title: "Customer Name",
                  hintText: "Enter the Name",
                  controller: nameController),
              UIHelper.vMargin10,
              CustomInputFieldWithTitle(
                  title: "Mobile Number",
                  hintText: "Enter your phone Number",
                  controller: phoneController),
              UIHelper.vMargin10,
              CustomInputFieldWithTitle(
                  title: "Nationality",
                  hintText: "Select your Nationality",
                  controller: nationalityController),
              UIHelper.vMargin10,
              CustomInputFieldWithTitle(
                  title: "License Number",
                  hintText: "Enter the your license Number",
                  controller: licenseController),
              UIHelper.vMargin20,
              Button(buttonName: "Next"),
            ],
          ),
        ));
  }
}
