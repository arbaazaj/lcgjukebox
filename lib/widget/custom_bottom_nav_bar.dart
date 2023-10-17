import 'package:flutter/material.dart';
import 'package:lcgjukebox/method/box_shadow.dart';
import 'package:lcgjukebox/themes/color.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: colorElement,
          border: Border.all(
            color: colorTextColor,
            width: 3.0,
            style: BorderStyle.solid,
          ),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          )),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Menu',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    buildBoxShadow(),
                  ]),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.play_arrow_outlined,
                shadows: [
                  buildBoxShadow(),
                ],
                size: 36.0,
              ),
            ),
            Text(
              'Exit',
              style: TextStyle(
                shadows: [
                  buildBoxShadow(),
                ],
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
