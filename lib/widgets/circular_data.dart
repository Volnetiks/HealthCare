import 'package:flutter/material.dart';
import 'package:health_care/painters/circular_progress_painter.dart';

class CircularData extends StatelessWidget {
  const CircularData({super.key, this.progress, required this.start, required this.size});

  final double? progress;
  final double start;
  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: CustomPaint(
        painter: CircularProgressPainter(progress: progress, start: start),
        child: progress == null ? Icon(Icons.question_mark_rounded, color: Colors.grey.shade400, size: size * 2 / 3,) : null
      ),
    );
  }
}