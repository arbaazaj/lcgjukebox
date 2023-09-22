import 'package:flutter/material.dart';
import 'package:lcgjukebox/themes/color.dart';
import 'package:lcgjukebox/widgets/custom_app_bar.dart';
import 'package:lcgjukebox/widgets/custom_bottom_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: colorBackground,
      bottomNavigationBar: CustomBottomNavBar(),
      appBar: CustomAppBar(),
      body: Column(
        children: [
          // Main music player

          // Playlist area.

          // Bottom menu bar.
        ],
      ),
    );
  }
}
