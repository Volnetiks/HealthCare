import 'package:flutter/material.dart';
import 'package:health_care/widgets/break_circle.dart';
import 'package:health_care/widgets/circular_progress.dart';
import 'package:health_care/widgets/data_item.dart';
import 'package:health_care/widgets/stats_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> weekdays = ['M', 'T', 'W', 'T', 'F', 'S', 'S'];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 35.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Today", style: TextStyle(color: Colors.grey.shade600, fontSize: 20)),
                const FractionallySizedBox(
                  widthFactor: 0.8,
                  child: Text("Monitor your progess towards a longer life.", style: TextStyle(fontSize: 25, ), textAlign: TextAlign.center,)
                ),
                const SizedBox(height: 20,),
                SizedBox(
                  height: 70,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 7,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14.0),
                        child: Column(
                          children: [
                            SizedBox(height: 30, child: CircularProgress(progress: index == 2 ? null : 0.1 * index, start: 0)),
                            const SizedBox(height: 5),
                            Text(weekdays[index], style: const TextStyle(fontSize: 12))
                          ],
                        )
                      );
                    }
                  ),
                ),
                const BreakCircle(),
                const SizedBox(height: 20),
                const Text("Following", style: TextStyle(fontSize: 30, color: Colors.black)),
                const SizedBox(height: 20),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.0),
                        child: StatsItem(icon: Icons.lock_rounded, title: "Activity", value: "+2.0 points", iconColor: Colors.orange),
                      );
                    },
                  )
                ),
                const SizedBox(height: 40),
                const Text("All Health Data", style: TextStyle(fontSize: 30, color: Colors.black)),
                Expanded(
                  child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return const Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
                        child: DataItem(),
                      );
                  }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}