import 'package:flutter/material.dart';
import 'package:health_care/utils/hex_color.dart';
import 'package:health_care/widgets/data/stamina_data_graph.dart';
import 'package:health_care/widgets/rounded_icon.dart';

class StaminaDataItem extends StatelessWidget {
  const StaminaDataItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.white,
            border: Border.all(color: HexColor.fromHex("#faf6ed"), width: 1.5)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    RoundedIcon(
                      color: HexColor.fromHex("#f7f1fb"),
                      icon: Icons.lock_rounded,
                      iconColor: Colors.purple,
                      size: 60,
                      iconSize: 30,
                    ),
                    const SizedBox(width: 10),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Boost Stamina",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 17)),
                        Text("12 - 25 Oct. 2024",
                            style: TextStyle(color: Colors.grey, fontSize: 13))
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text("Last week >",
                      style: TextStyle(color: Colors.grey)),
                  const SizedBox(height: 10),
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
                                StaminaData(
                                  done: index % 3 != 0,
                                  doneTomorrow:
                                      index == 6 ? null : (index + 1) % 3 != 0,
                                  size: 10,
                                ),
                              ],
                            ),
                          );
                        }),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
