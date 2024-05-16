import 'package:flutter/material.dart';

import 'screens/screen_one.dart';
import 'screens/screen_three.dart';
import 'screens/screen_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ScreenOne(),
    );
  }
}