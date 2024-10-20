import 'package:flutter/material.dart';
import 'package:health_care/painters/break_circle_painter.dart';

class BreakCircle extends StatelessWidget {
  const BreakCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 4,
      width: 4,
      child: CustomPaint(
        painter: BreakCirclePainter(),
      ),
    );
  }
}