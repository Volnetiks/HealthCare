import 'package:flutter/material.dart';
import 'package:health_care/painters/circular_progress_painter.dart';

class CircularProgress extends StatelessWidget {
  const CircularProgress({super.key, this.progress, required this.start});

  final double? progress;
  final double start;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 30,
      height: 30,
      child: CustomPaint(
        painter: CircularProgressPainter(progress: progress, start: start),
        child: progress == null ? Icon(Icons.question_mark_rounded, color: Colors.grey.shade400, size: 20,) : null
      ),
    );
  }
}