import 'package:flutter/material.dart';

class LinePainter extends CustomPainter {
  final double width;
  final Color lineColor;

  LinePainter({
    required this.width,
    required this.lineColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = lineColor;
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, 0);
    path.quadraticBezierTo(width / 3, 0.5, width, 0);
    path.quadraticBezierTo(width / 3, -0.5, 0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
