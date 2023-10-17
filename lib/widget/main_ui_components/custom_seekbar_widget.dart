import 'package:flutter/material.dart';
import 'package:lcgjukebox/themes/color.dart';

class CustomSeekBarWidget extends StatefulWidget {
  const CustomSeekBarWidget({
    super.key,
  });

  @override
  State<CustomSeekBarWidget> createState() => _CustomSeekBarWidgetState();
}

class _CustomSeekBarWidgetState extends State<CustomSeekBarWidget> {
  double _value = 0.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.0,
      decoration: BoxDecoration(
        color: colorInsetColor,
        border: Border.all(
          width: 3.0,
          color: colorTextColor,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(14.0),
      ),
      child: Slider(
        activeColor: colorSeekbarThumbColor,
        thumbColor: colorSeekbarThumbColor,
        value: _value,
        max: 100.0,
        min: 0.0,
        onChanged: (value) {
          setState(() {
            _value = value;
          });
        },
      ),
    );
  }
}
