import 'package:flutter/material.dart';
import 'package:lcgjukebox/themes/color.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// The default [size] is 40.0
  final double size;

  const CustomAppBar({
    super.key,
    this.size = 60.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colorElements,
        border: Border.all(color: colorTextColor, width: 3.0),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
      ),
      child: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: const Column(
          children: [
            Text(
              'LCG JukeBox',
              style: TextStyle(
                shadows: [
                  BoxShadow(
                      color: colorTextColor,
                      blurRadius: 4.0,
                      blurStyle: BlurStyle.solid,
                      offset: Offset(1.0, 1.0),
                      spreadRadius: 2.0),
                ],
                color: colorTextColor,
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
              ),
            ),
            Divider(
              indent: 60.0,
              endIndent: 60.0,
              thickness: 2.0,
              color: colorTextSubtitle,
            ),
            //SizedBox(height: 5.0),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(size);
}
