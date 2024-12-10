import 'package:flutter/material.dart';

class ThemeLearnView extends StatefulWidget {
  const ThemeLearnView({super.key});

  @override
  State<ThemeLearnView> createState() => _ThemeLearnViewState();
}

class _ThemeLearnViewState extends State<ThemeLearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Example'),
      ),
      body: Column(
        children: [
          CheckboxListTile(
            title: const Text('Select'),
            value: true,
            onChanged: (value) {},
          )
        ],
      ),
    );
  }
}
