import 'package:flutter/material.dart';
import 'package:flutter_full_learn_one/lesson_one/container_sized_box_learn.dart';
import 'package:flutter_full_learn_one/lesson_one/text_learn_view.dart';
//import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: ContainerSizedBoxLearning(),
    );
  }
}
