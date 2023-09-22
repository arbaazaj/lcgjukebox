import 'package:flutter/material.dart';
import 'package:lcgjukebox/themes/color.dart';

BoxShadow buildBoxShadow() {
  return const BoxShadow(
    color: colorTextColor,
    blurRadius: 4.0,
    blurStyle: BlurStyle.solid,
    offset: Offset(1.0, 1.0),
    spreadRadius: 2.0,
  );
}
