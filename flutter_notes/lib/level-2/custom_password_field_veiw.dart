import 'package:flutter/material.dart';
import 'package:flutter_notes/demos/password_text_field_demo.dart';

class CustomPasswordFieldVeiw extends StatefulWidget {
  const CustomPasswordFieldVeiw({super.key});

  @override
  State<CustomPasswordFieldVeiw> createState() =>
      _CustomPasswordFieldVeiwState();
}

class _CustomPasswordFieldVeiwState extends State<CustomPasswordFieldVeiw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Password Field'),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PasswordTextField(),
        ],
      ),
    );
  }
}
