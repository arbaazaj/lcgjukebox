import 'package:flutter/cupertino.dart';
import 'package:lcgjukebox/themes/color.dart';

class PlaylistUIWidget extends StatelessWidget {
  const PlaylistUIWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.10,
        decoration: BoxDecoration(
          color: colorElement,
          border: Border.all(
            color: colorTextColor,
            style: BorderStyle.solid,
            width: 3.0,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: const Padding(
          padding:
              EdgeInsets.only(left: 8.0, right: 8.0, top: 4.0, bottom: 4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Next:',
                    style: TextStyle(
                      color: colorTextSubtitle,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                      fontSize: 20.0,
                    ),
                  ),
                  Text(
                    'Track: 42/1881',
                    style: TextStyle(
                      color: colorTextColor,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(CupertinoIcons.shuffle_thick),
                      SizedBox(width: 8.0),
                      Icon(CupertinoIcons.repeat),
                    ],
                  ),
                ],
              ),
              Text(
                'Caribbean Blue / Enya',
                style: TextStyle(
                  color: colorTextSubtitle,
                  fontWeight: FontWeight.bold,
                  fontSize: 26.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
