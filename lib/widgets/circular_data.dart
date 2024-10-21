import 'package:flutter/material.dart';
import 'package:health_care/painters/week_data_painter.dart';

class CircularData extends StatelessWidget {
  const CircularData(
      {super.key, this.progress = 1, required this.size, this.nextProgress});

  final double progress;
  final double size;
  final double? nextProgress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: CustomPaint(
          painter:
              WeekDataPainter(progress: progress, nextProgress: nextProgress)),
    );
  }
}
