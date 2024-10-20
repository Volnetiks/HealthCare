import 'package:flutter/material.dart';
import 'package:health_care/pages/home.dart';

void main() {
  runApp(const HealthCare());
}

class HealthCare extends StatelessWidget {
  const HealthCare({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Health Care",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

