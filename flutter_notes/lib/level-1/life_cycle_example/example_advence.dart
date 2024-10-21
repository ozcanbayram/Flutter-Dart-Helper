import 'package:flutter/material.dart';
import 'package:flutter_notes/level-1/life_cycle_example/example_main.dart';

class ExampleAdvence extends StatefulWidget {
  const ExampleAdvence({super.key});

  @override
  State<ExampleAdvence> createState() => _ExampleAdvenceState();
}

class _ExampleAdvenceState extends State<ExampleAdvence> {
  String? _mainText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exapmle Advence'),
        actions: [
          IconButton(onPressed: _changeMainText, icon: const Icon(Icons.home))
        ],
      ),
      body: ExampleMain(
        initialText: _mainText,
      ),
    );
  }

  void _changeMainText() {
    setState(() {
      _mainText = 'Anasayfa (onPressed)';
    });
  }
}
