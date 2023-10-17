import 'package:flutter/material.dart';
import 'package:lcgjukebox/themes/color.dart';

class MusicAlbumArtComponent extends StatelessWidget {
  const MusicAlbumArtComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: 100.0,
        maxWidth: 100.0,
        minHeight: 120.0,
        maxHeight: 120.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
              color: colorWhiteText,
              style: BorderStyle.solid,
              strokeAlign: BorderSide.strokeAlignInside,
              width: 3.0),
        ),
        child: Image.asset(
          'assets/music_cover.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}