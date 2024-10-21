import 'package:flutter/material.dart';
import 'package:health_care/painters/stamina_data_painter.dart';

class StaminaData extends StatelessWidget {
  const StaminaData(
      {super.key, required this.done, required this.size, this.doneTomorrow});

  final bool done;
  final bool? doneTomorrow;
  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: CustomPaint(
          painter: StaminaDataPainter(done: done, doneTomorrow: doneTomorrow)),
    );
  }
}
