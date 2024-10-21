import 'package:flutter/material.dart';
import 'package:health_care/utils/hex_color.dart';

class WeekDataPainter extends CustomPainter {
  final double progress;
  final double? nextProgress;

  WeekDataPainter({this.progress = 0, this.nextProgress});

  @override
  void paint(Canvas canvas, Size size) {
    final lightOrange = HexColor.fromHex("#fbc28e");
    final darkOrange = HexColor.fromHex("#fda03a");
    final color = Color.lerp(lightOrange, darkOrange, progress / 7)!;

    final paintBackground = Paint()
      ..color = color
      ..style = PaintingStyle.stroke;

    if (nextProgress != null) {
      final gradient = LinearGradient(colors: [
        color,
        Color.lerp(lightOrange, darkOrange, nextProgress! / 7)!
      ]);

      paintBackground.strokeWidth = 2;
      paintBackground.shader = gradient.createShader(Rect.fromPoints(
          Offset(size.width / 2 + (progress == 0 ? 0.3 : progress * 0.3),
              size.height / 2),
          Offset(size.width + 15, size.height / 2)));

      canvas.drawLine(
          Offset(size.width / 2 + (progress == 0 ? 0.3 : progress * 0.3),
              size.height / 2),
          Offset(size.width + 15, size.height / 2),
          paintBackground);
    }

    paintBackground.strokeWidth = (progress * 0.8) + 2;
    paintBackground.shader = null;

    canvas.drawCircle(Offset(size.width / 2, size.height / 2),
        progress == 0 ? 0.3 : progress * 0.3, paintBackground);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

  double convertPercentageToRadian(double progress) {
    return 0.06283 * progress * 100;
  }
}
