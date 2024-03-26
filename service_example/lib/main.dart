import 'package:flutter/material.dart';
import 'package:service_example/service/service.dart';
import 'package:service_example/service/service_post.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 134, 236, 31)),
        useMaterial3: true,
      ),
      home: MyServiceView(),
    );
  }
}
