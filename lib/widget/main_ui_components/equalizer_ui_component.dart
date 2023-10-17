import 'package:flutter/material.dart';
import 'package:lcgjukebox/themes/color.dart';

class EqualizerUIComponent extends StatelessWidget {
  const EqualizerUIComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
            maxWidth: 140.0, maxHeight: 80.0, minHeight: 80.0, minWidth: 140.0),
        child: Container(
          width: 140.0,
          height: 80.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(
              color: colorEqualizerBackground,
              style: BorderStyle.solid,
              strokeAlign: BorderSide.strokeAlignOutside,
              width: 3.0,
            ),
            boxShadow: [
              //buildBoxShadow(),
            ],
          ),
        ),
      ),
    );
  }
}
