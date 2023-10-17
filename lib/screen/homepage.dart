import 'package:flutter/material.dart';
import 'package:lcgjukebox/themes/color.dart';
import 'package:lcgjukebox/widget/custom_app_bar.dart';
import 'package:lcgjukebox/widget/custom_bottom_nav_bar.dart';
import 'package:lcgjukebox/widget/main_music_ui_widget.dart';
import 'package:lcgjukebox/widget/playlist_ui_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: colorBackground,
      // Bottom Menu bar.
      bottomNavigationBar: CustomBottomNavBar(),
      // Custom App bar.
      appBar: CustomAppBar(),
      body: Column(
        children: [
          // Main music player
          SizedBox(height: 20.0),
          MainMusicUIWidget(),

          // Playlist area.
          SizedBox(height: 20.0),
          PlaylistUIWidget(),
        ],
      ),
    );
  }
}
