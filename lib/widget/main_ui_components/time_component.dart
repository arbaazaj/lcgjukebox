import 'package:flutter/material.dart';
import 'package:lcgjukebox/method/box_shadow.dart';
import 'package:lcgjukebox/themes/color.dart';

class TimeComponent extends StatelessWidget {
  const TimeComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minHeight: 40.0,
        minWidth: 80.0,
        maxWidth: 80.0,
        maxHeight: 40.0,
      ),
      child: Container(
        padding: const EdgeInsets.only(right: 4.0),
        decoration: BoxDecoration(
          color: colorInsetColor,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            width: 3.0,
            color: colorTextColor,
            style: BorderStyle.solid,
          ),
        ),
        child: Text(
          '-3:23',
          textAlign: TextAlign.right,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24.0,
              color: colorWhiteText,
              shadows: [buildBoxShadow()]),
        ),
      ),
    );
  }
}
