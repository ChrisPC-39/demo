import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  //! This won't work
  // String x = 0;

  //! But this will work
  final String x = "Hello";

  // * ScreenTwo is Stateless (extends StatelessWidget) which means it can't
  // * update any content. Everything will remain the same as it was when initialized

  @override
  Widget build(BuildContext context) {
    //? Scaffold is a material widget. If you want to use Cupertino, you would need to use something else!
    return Scaffold(
      //? Notice how the text and container are shown on the top left of the screen;
      // * You can wrap your entire MaterialApp (in main.dart) with a "SafeArea" widget;
      // * SafeArea makes sure to render your app under the phones status bar and above the navigation bar;
      // * But I think it looks bad, so instead you could wrap this column with a "Padding" widget.
      body: Column(
        children: [
          const Text("Hello"),
          Container(width: 50, height: 50, color: Colors.red),
        ],
      ),
    );
  }
}
