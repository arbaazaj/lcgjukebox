import 'package:flutter/material.dart';
import 'package:lcgjukebox/themes/color.dart';
import 'package:lcgjukebox/widgets/custom_app_bar.dart';
import 'package:lcgjukebox/widgets/custom_bottom_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBackground,
      // Bottom Menu bar.
      bottomNavigationBar: const CustomBottomNavBar(),
      // Custom App bar.
      appBar: const CustomAppBar(),
      body: Column(
        children: [
          // Main music player
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.50,
              decoration: BoxDecoration(
                color: colorElement,
                border: Border.all(
                  color: colorTextColor,
                  style: BorderStyle.solid,
                  width: 3.0,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.20,
              decoration: BoxDecoration(
                color: colorElement,
                border: Border.all(
                  color: colorTextColor,
                  style: BorderStyle.solid,
                  width: 3.0,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          // Playlist area.
        ],
      ),
    );
  }
}
