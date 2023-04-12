import 'package:flutter/material.dart';

import 'package:test/pages/home_page.dart';

/// main class
class MyApp extends StatelessWidget {
  ///main calss
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test App',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: const HomePage(),
    );
  }
}
