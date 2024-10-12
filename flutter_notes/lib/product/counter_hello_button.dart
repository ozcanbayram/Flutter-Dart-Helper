import 'package:flutter/material.dart';
import 'package:flutter_notes/product/language/language_items.dart';

class CounterHelloButton extends StatefulWidget {
  const CounterHelloButton({super.key});

  @override
  State<CounterHelloButton> createState() => _CounterHelloButtonState();
}

class _CounterHelloButtonState extends State<CounterHelloButton> {
  int _helloCounter = 0;

  final String _welcomeText = LanguageItems.welcomeTitle;
  //Bu title stringleri toplamış olduğumuz sınıftan gelir. projenin stringleri bir yerde toplanmalıdır.

  void _updateHelloCounter() {
    setState(() {
      ++_helloCounter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: const ButtonStyle(
            shape: WidgetStatePropertyAll(RoundedRectangleBorder()),
            padding: WidgetStatePropertyAll(
                EdgeInsets.symmetric(horizontal: 16, vertical: 8)),
            backgroundColor: WidgetStatePropertyAll(Colors.blue)),
        onPressed: _updateHelloCounter,
        child: Text(
          '$_welcomeText  $_helloCounter',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
    );
  }
}
