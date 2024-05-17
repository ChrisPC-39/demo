import 'package:flutter/material.dart';

import 'screens/screen_four.dart';
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
    /* * MaterialApp gives us access to widgets that render in "Google Style".
    * Without MaterialApp the app won't render properly (unless you create your own style, but I don't recommend it)
    ! You can choose between MaterialApp and CupertinoApp (for "iOS Style");
    ! Only problem is that I have never used Cupertino widgets so I don't know all their names.
    * */
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // * If you set this to true, a small ugly banner on the top right will appear
      home: ScreenFour(), // * Change this widget to render other screens
    );
  }
}