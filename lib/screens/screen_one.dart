import 'package:flutter/widgets.dart'; // ? widgets vs material vs cupertino

class ScreenOne extends StatelessWidget {
  //!Constructor (key is not a required parameter)
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //? If we don't use Material or Cupertino widgets, you'll have to define your own colors like so: "color: const Color(0xFF123123)".
      //? If we used Material, you could have used: "color: Colors.blue"
      //? If we used Cupertino, you could have used: "color: CupertinoColor.activeBlue"
      // * This is just a basic example
      color: const Color(0xFF123123),
      child: const Text("Hello world!"),
    );
  }
}