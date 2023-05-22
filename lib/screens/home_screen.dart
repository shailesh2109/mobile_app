import 'package:flutter/material.dart';
import 'package:rentico/helpers/asset_helper.dart';
import 'package:rentico/helpers/navigation_helper.dart';
import 'package:rentico/screens/booking_form.dart';
import 'package:rentico/widgets/home_screen_tile.dart';
import '../helpers/strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                size: 20,
              ))
        ],
        leadingWidth: 160,
        leading: Padding(
          padding: const EdgeInsets.all(11.0),
          child: Image.asset(AssetHelper.splashLogo),
        ),
      ),
      body: Column(
        children: [
          HomeScreenTile(
              onTap: () {
                Navigators.goTo(context, const BookingForm());
              },
              title: Strings.makeBooking,
              subTitle: Strings.makeBookingSubTitle),
          HomeScreenTile(
              onTap: () {},
              title: Strings.recieveBooking,
              subTitle: Strings.recieveBookingSubTitle),
        ],
      ),
    );
  }
}
