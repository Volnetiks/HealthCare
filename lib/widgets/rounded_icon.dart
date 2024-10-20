import 'package:flutter/material.dart';

class RoundedIcon extends StatelessWidget {
  const RoundedIcon(
      {super.key,
      required this.color,
      required this.icon,
      required this.iconColor, this.size = 45, this.iconSize});

  final Color? color;
  final IconData icon;
  final Color? iconColor;
  final double size;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(90),
        color: color,
      ),
      child: Icon(
        size: iconSize,
        icon,
        color: iconColor,
      ),
    );
  }
}