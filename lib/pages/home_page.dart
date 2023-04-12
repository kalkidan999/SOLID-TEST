import 'dart:math';

import 'package:flutter/material.dart';

///home page details here
class HomePage extends StatefulWidget {
  ///
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color? color;
  Color generateColor() {
    setState(() {
      color = Colors.primaries[Random().nextInt(Colors.primaries.length)];
    });

    return color ?? Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    final textSize = MediaQuery.of(context).size.height * 0.06;

    return Scaffold(
      backgroundColor: color,
      body: InkWell(
        onTap: () {
          generateColor();
        },
        child: Center(
          child: Text(
            "Hello There",
            style: TextStyle(fontSize: textSize, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
