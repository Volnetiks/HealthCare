import 'package:flutter/material.dart';
import 'package:health_care/utils/hex_color.dart';
import 'package:health_care/widgets/rounded_icon.dart';

class StatsItem extends StatelessWidget {
  const StatsItem(
      {super.key,
      required this.icon,
      required this.title,
      required this.value,
      required this.iconColor});

  final Color iconColor;
  final IconData icon;
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 120,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: HexColor.fromHex("#faf6ed")),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RoundedIcon(
                  color: Colors.white, icon: icon, iconColor: iconColor),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style:
                          const TextStyle(color: Colors.black, fontSize: 18)),
                  Text(value, style: const TextStyle(color: Colors.grey))
                ],
              )
            ],
          ),
        ));
  }
}
