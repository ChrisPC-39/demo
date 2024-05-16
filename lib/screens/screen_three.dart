import 'package:flutter/cupertino.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(x.toString()),
          Container(width: 50, height: 50, color: CupertinoColors.activeBlue),
        ],
      ),
    );
  }
}
