import 'package:flutter/material.dart';
import 'package:lcgjukebox/themes/color.dart';
import 'package:lcgjukebox/widget/main_ui_components/custom_seekbar_widget.dart';
import 'package:lcgjukebox/widget/main_ui_components/equalizer_ui_component.dart';
import 'package:lcgjukebox/widget/main_ui_components/music_album_art_component.dart';
import 'package:lcgjukebox/widget/main_ui_components/time_component.dart';

class MainMusicUIWidget extends StatelessWidget {
  const MainMusicUIWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 16.0, right: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top layout row
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Music Duration.
                  TimeComponent(),

                  // Music Album Art Cover.
                  SizedBox(width: 20.0),
                  MusicAlbumArtComponent(),

                  // Equalizer UI
                  SizedBox(width: 20.0),
                  EqualizerUIComponent(),
                ],
              ),
              // Artist row.
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Artist:',
                        style: TextStyle(
                          color: colorTextSubtitle,
                          fontStyle: FontStyle.italic,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'The Beatles',
                        style: TextStyle(
                          color: colorTextColor,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // Divider line not visible need to fix.
                      Divider(
                        color: colorTextSubtitle,
                        endIndent: MediaQuery.of(context).size.width * 0.30,
                        thickness: 5.0,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Song title row.
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Title:',
                                style: TextStyle(
                                  color: colorTextSubtitle,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '192kbps/22KHz',
                                style: TextStyle(
                                  color: colorTextSubtitle,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          // Song title.
                          Text(
                            'I\'ve Got a Feeling / 14..',
                            softWrap: true,
                            style: TextStyle(
                              color: colorTextColor,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(width: 8.0),
                  Flexible(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                          maxHeight: 150.0,
                          maxWidth: MediaQuery.of(context).size.width,
                          minHeight: 150.0,
                          minWidth: MediaQuery.of(context).size.width),
                      child: Container(
                        decoration: BoxDecoration(
                            color: colorInsetColor,
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                                color: colorTextColor,
                                style: BorderStyle.solid,
                                width: 3.0)),
                      ),
                    ),
                  ),
                ],
              ),
              // Divider line visible below Song title.
              Divider(
                color: colorTextSubtitle,
                endIndent: MediaQuery.of(context).size.width * 0.30,
                thickness: 5.0,
              ),
              const SizedBox(height: 10.0),
              // Seekbar.
              const CustomSeekBarWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
