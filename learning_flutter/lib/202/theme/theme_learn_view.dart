import 'package:flutter/material.dart';
import 'package:flutter_full_learn_one/demos/password_text_field.dart';

class ThemeLearnView extends StatelessWidget {
  const ThemeLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Column(
            children: [
              PasswordTextField(),
              CheckboxListTile(
                value: true,
                onChanged: (value) {},
                title: Text('Select'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
