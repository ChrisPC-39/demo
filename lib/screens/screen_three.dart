import 'package:flutter/material.dart';

// ! This is a stateful widget. It means it can update it's own state
class ScreenThree extends StatefulWidget {
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(x.toString()),
          // * GestureDetector can be applied to (almost) every widget.
          // * However for advanced control we could have used a TextButton or ElevatedButton.
          GestureDetector(
            onTap: () {
              // * setState() re-renders the widget tree so you can see your changes.
              setState(() {
                x++;
              });
            },
            child: Container(width: 50, height: 50, color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
