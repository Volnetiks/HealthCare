import 'package:flutter/material.dart';
import 'dart:math' as math;

class StaminaDataPainter extends CustomPainter {
  final bool done;
  final bool? doneTomorrow;

  StaminaDataPainter({required this.done, this.doneTomorrow});

  @override
  void paint(Canvas canvas, Size size) {
    final grey = Colors.grey.shade300;
    const purple = Colors.purple;
    final color = Color.lerp(grey, purple, done ? 1 : 0)!;

    final paintBackground = Paint()
      ..color = color
      ..style = PaintingStyle.stroke;

    if (doneTomorrow != null) {
      final gradient = LinearGradient(
          colors: [color, Color.lerp(grey, purple, doneTomorrow! ? 1 : 0)!],
          stops: [0, 0.3]);

      paintBackground.strokeWidth = 2;
      paintBackground.shader = gradient.createShader(Rect.fromPoints(
          Offset(2, size.height / 2), Offset(size.width, size.height / 2)));

      canvas.drawLine(Offset(2, size.height / 2),
          Offset(size.width + 10, size.height / 2), paintBackground);
    }

    paintBackground.strokeWidth = 3;
    paintBackground.shader = null;

    final path = Path();

    path.moveTo(0, size.height / 2);
    path.lineTo(2, size.height / 2 - 2);
    path.lineTo(2, size.height / 2 + 2);
    path.close();

    canvas.drawPath(path, paintBackground);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

  double convertPercentageToRadian(double progress) {
    return 0.06283 * progress * 100;
  }
}
