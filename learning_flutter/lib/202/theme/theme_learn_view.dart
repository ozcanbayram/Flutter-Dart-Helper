import 'package:flutter/material.dart';

class ThemeLearnView extends StatelessWidget {
  const ThemeLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          CheckboxListTile(
            value: true,
            onChanged: (value) {},
            title: Text('Select'),
          )
        ],
      ),
    );
  }
}
