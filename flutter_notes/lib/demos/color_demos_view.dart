// Bir ekran oalcak
// Bu ekranda 3 buton olacak ve bunlara basınca renk değişecek
// Seçili olan buton selectedIcon olsun

import 'package:flutter/material.dart';

class ColorDemos extends StatefulWidget {
  const ColorDemos({super.key});

  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
  Color? _backgroundColor = Colors.transparent;

  void changeBackgrountColors(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(
        title: const Text('Colors Demo'),
      ),
      bottomNavigationBar:
          BottomNavigationBar(onTap: _colorOnTap, items: const [
        BottomNavigationBarItem(
            icon: _ColorContainer(
              color: Colors.red,
            ),
            label: 'Red'),
        BottomNavigationBarItem(
            icon: _ColorContainer(
              color: Colors.yellow,
            ),
            label: 'Yelllow'),
        BottomNavigationBarItem(
            icon: _ColorContainer(
              color: Colors.blue,
            ),
            label: 'Blue'),
      ]),
    );
  }

  void _colorOnTap(int value) {
    if (value == _MyColors.red.index) {
      changeBackgrountColors(Colors.red);
    } else if (value == _MyColors.yellow.index) {
      changeBackgrountColors(Colors.yellow);
    } else if (value == _MyColors.blue.index) {
      changeBackgrountColors(Colors.blue);
    }
  }
}

enum _MyColors { red, yellow, blue }

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({
    super.key,
    required this.color,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(width: 20, height: 20, color: color);
  }
}
