import 'package:flutter/material.dart';
import 'package:lcgjukebox/themes/color.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: colorElements,
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
            const Text(
              'Menu',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                shadows: [
                  BoxShadow(
                    color: colorTextColor,
                    blurRadius: 4.0,
                    blurStyle: BlurStyle.solid,
                    offset: Offset(1.0, 1.0),
                    spreadRadius: 2.0,
                  ),
                ]
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.play_arrow_outlined,
                shadows: [
                  BoxShadow(
                    color: colorTextColor,
                    blurRadius: 4.0,
                    blurStyle: BlurStyle.solid,
                    offset: Offset(1.0, 1.0),
                    spreadRadius: 2.0,
                  ),
                ],
                size: 36.0,
              ),
            ),
            const Text(
              'Exit',
              style: TextStyle(
                shadows: [
                  BoxShadow(
                    color: colorTextColor,
                    blurRadius: 4.0,
                    blurStyle: BlurStyle.solid,
                    offset: Offset(1.0, 1.0),
                    spreadRadius: 2.0,
                  ),
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
