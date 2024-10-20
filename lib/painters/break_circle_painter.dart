import 'package:flutter/material.dart';
import 'package:health_care/utils/hex_color.dart';

class BreakCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
    ..strokeWidth = 10
    ..color = HexColor.fromHex("#dbd3c6")
    ..style = PaintingStyle.stroke;

    canvas.drawCircle(Offset(size.width / 2, size.height / 2), size.width / 2, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

  double convertPercentageToRadian(double progress) {
    return 0.06283 * progress * 100;
  }
}