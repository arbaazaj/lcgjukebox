import 'package:flutter/material.dart';
import 'package:lcgjukebox/method/box_shadow.dart';
import 'package:lcgjukebox/themes/color.dart';
import 'package:lcgjukebox/widget/appbar_component/line_painter.dart';

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
        color: colorElement,
        border: Border.all(color: colorTextColor, width: 3.0),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
      ),
      child: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Column(
          children: [
            Text(
              'LCG JukeBox',
              style: TextStyle(
                shadows: [buildBoxShadow()],
                color: colorTextColor,
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
              ),
            ),
            CustomPaint(
              size: Size(MediaQuery.of(context).size.width * 0.50, 10),
              painter: LinePainter(
                width: MediaQuery.of(context).size.width * 0.50,
                lineColor: colorTextColor,
              ),
            ),
            // const Divider(
            //   indent: 60.0,
            //   endIndent: 60.0,
            //   thickness: 2.0,
            //   color: colorTextSubtitle,
            // ),
            //SizedBox(height: 5.0),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(size);
}
