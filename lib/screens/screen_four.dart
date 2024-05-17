import 'dart:math';

import 'package:flutter/material.dart';

class ScreenFour extends StatefulWidget {
  const ScreenFour({super.key});

  @override
  State<ScreenFour> createState() => _ScreenFourState();
}

class _ScreenFourState extends State<ScreenFour> {
  int max = 0;
  int randomIndex = 0;
  final List<List<String>> choices = [
    ["Go back in time", "go forward in time?"],
    ["Have the ability to fly", "be invisible?"],
    ["Live on a desert island", "in a crowded city?"],
    ["Always be 10 minutes late", "always be 20 minutes early?"],
    ["Have unlimited money", "unlimited time?"],
  ];

  //! This method is called when the class is rendered. You can initialize
  //! variables here that are based on instance variables (like "max")
  @override
  void initState() {
    super.initState();

    // * No need to use setState() here because they are initialized before rendering
    max = choices.length;
    randomIndex = Random().nextInt(max);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.grey[800],
        title: const Text("Would you rather"),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              // * Expanded widgets will try to fill all space they can
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      randomIndex = Random().nextInt(max);
                    });
                  },
                  child: Ink(
                    // * To make the "Ink" container as wide as the screen we need something like this
                    // * Because Columns will try to stay as small as possible.
                    // * If you remove the width from these two containers, they will be as wide as the text (too small)
                    width: MediaQuery.of(context).size.width,
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        choices[randomIndex][0],
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ),
              // * This SizedBox acts as padding between the containers
              const SizedBox(height: 10),
              // * Multiple widgets in the same Column will divide the space between them
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      randomIndex = Random().nextInt(max);
                    });
                  },
                  child: Ink(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        choices[randomIndex][1],
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(60),
              ),
              width: 50,
              height: 50,
              child: const Center(
                child: Text(
                  "OR",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
