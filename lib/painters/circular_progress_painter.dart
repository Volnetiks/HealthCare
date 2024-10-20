import 'package:flutter/material.dart';
import 'package:health_care/utils/hex_color.dart';

class CircularProgressPainter extends CustomPainter {

  final double? progress;
  final double start;

  CircularProgressPainter({
    required this.progress,
    required this.start
  });

  @override
  void paint(Canvas canvas, Size size) {
    final lightOrange = HexColor.fromHex("#fbc28e");
    final darkOrange = HexColor.fromHex("#f7861f");
    final color = Color.lerp(lightOrange, darkOrange, progress ?? 0)!;

    final paintBackground = Paint()
    ..strokeWidth = 5
    ..color = HexColor.fromHex("#faf6ed")
    ..style = PaintingStyle.stroke;

    canvas.drawCircle(Offset(size.width / 2, size.height / 2), size.width / 2, paintBackground);

    if (progress != null) {
      final paintProgress = Paint()
        ..strokeWidth = 5
        ..color = color
        ..strokeCap = StrokeCap.round
        ..style = PaintingStyle.stroke;

      canvas.drawArc(Rect.fromCenter(center: Offset(size.width / 2, size.height / 2), width: size.width, height: size.height), 0, convertPercentageToRadian(progress!), false, paintProgress);
    } else {
      paintBackground.style = PaintingStyle.fill;
      canvas.drawCircle(Offset(size.width / 2, size.height / 2), size.width / 2, paintBackground);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

  double convertPercentageToRadian(double progress) {
    return 0.06283 * progress * 100;
  }
}