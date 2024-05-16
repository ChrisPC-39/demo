import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  //! This won't work
  // String x = 0;

  //But this will work
  final String x = "Hello";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text("Hello"),
          Container(width: 50, height: 50, color: Colors.red),
        ],
      ),
    );
  }
}
