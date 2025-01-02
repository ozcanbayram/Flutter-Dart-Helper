import 'package:flutter/material.dart';
import 'package:flutter_notes/level-2/alert_learn.dart';
import 'package:flutter_notes/level-2/theme/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Notes',
      debugShowCheckedModeBanner: false,
      theme: LightTheme().theme,
      home: const AlertLearn(),
    );
  }
}