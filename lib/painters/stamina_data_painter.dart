import 'package:flutter/material.dart';

class StaminaDataPainter extends CustomPainter {
  final bool done;
  final bool? doneTomorrow;

  StaminaDataPainter({required this.done, this.doneTomorrow});

  @override
  void paint(Canvas canvas, Size size) {
    final color = done ? Colors.purple : Colors.grey.shade300;
    final tomorrowColor = doneTomorrow == null
        ? color
        : doneTomorrow!
            ? Colors.purple
            : Colors.grey.shade300;

    final gradient = LinearGradient(
      colors: [color, tomorrowColor],
    );

    final paintBackground = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2
      ..shader = gradient.createShader(Rect.fromPoints(
          Offset(2, size.height / 2), Offset(size.width + 9, size.height / 2)));

    canvas.drawLine(Offset(2, size.height / 2),
        Offset(size.width + 9, size.height / 2), paintBackground);

    paintBackground.color = done ? Colors.purple : Colors.grey.shade300;
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
