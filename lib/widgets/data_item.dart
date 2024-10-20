import 'package:flutter/material.dart';
import 'package:health_care/utils/hex_color.dart';
import 'package:health_care/widgets/circular_data.dart';
import 'package:health_care/widgets/rounded_icon.dart';

class DataItem extends StatelessWidget {
  const DataItem({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> weekdays = ['M', 'T', 'W', 'T', 'F', 'S', 'S'];

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
        border: Border.all(color: HexColor.fromHex("#faf6ed"), width: 1.5)
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  RoundedIcon(color: HexColor.fromHex("#faefff"), icon: Icons.lock_rounded, iconColor: Colors.orange, size: 60, iconSize: 30,),
                  const SizedBox(width: 10),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Gaining muscle", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
                      Text("Muscle: 87.9%", style: TextStyle(color: Colors.grey, fontSize: 14))
                    ],
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text("Last week >"),
                const SizedBox(height: 5),
                SizedBox(
                  height: 30,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 7,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                              children: [
                                const CircularData(start: 0, size: 10),
                                const SizedBox(height: 5),
                                Text(weekdays[index], style: const TextStyle(fontSize: 8))
                              ],
                            ),
                        );
                      }
                    ),
                )
              ],
            )
          ],
        ),
      )
    );
  }
}