import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ready_custom_widgets/widgets_list.dart';

void main() {
  runApp(const MyApp());

  //? Status bar rengini dark yapmak için:
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  const WidgetsList(),
    );
  }
}