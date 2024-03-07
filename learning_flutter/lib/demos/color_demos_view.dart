// Bir ekran olacak
// Bu ekranda 3 buton olacak.
// Bu butonlara basınca renk değişimi olacak.
// Seçili olan butonda selected icon olsun.

import 'package:flutter/material.dart';

class ColorDemos extends StatefulWidget {
  const ColorDemos({super.key});

  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
  Color? _backgroundColor =
      Colors.transparent; //default  arkaplan rengi transparan.

  void ChangeBackgroundColor(Color color) {
    //renk değişim metodu. default değeri yeni color değeri ile değiştirir.
    setState(() {
      //anlık değişim için.
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      bottomNavigationBar:
          BottomNavigationBar(onTap: _colorOnTap, items: const [
        BottomNavigationBarItem(
          icon: _ContainerColor(color: Colors.red),
          label: 'RED',
        ),
        BottomNavigationBarItem(
          icon: _ContainerColor(
            color: Colors.amber,
          ),
          label: 'YELLOW',
        ),
        BottomNavigationBarItem(
          icon: _ContainerColor(
            color: Colors.blue,
          ),
          label: 'YELLOW',
        ),
      ]),
    );
  }

  void _colorOnTap(int value) {
    //Extract metot ile yukarıdan buraya alındı.
    //basılan butonun değerini value ile alır örneğin 0,1,2
    //value ile if else gibi işlemler yapabiliriz.
    //enum ile oluşturduğumuz isimleri kullanarak renk değiştirelim.
    if (value == _MyColor.red.index) {
      //index ile value değerini al
      // renk değişimi için hazırladığımız metodu kullanalım.
      ChangeBackgroundColor(Colors.red);
    } else if (value == _MyColor.yellow.index) {
      ChangeBackgroundColor(Colors.yellow);
    } else if (value == _MyColor.blue.index) {
      ChangeBackgroundColor(Colors.blue);
    }
  }
}

// valueden gelen 0,0,2 gibi buton değerlerini daha anlaşılır yapabilmek için isimlendelim:
enum _MyColor { red, yellow, blue }

class _ContainerColor extends StatelessWidget {
  const _ContainerColor({
    super.key,
    required this.color,
  });
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      color: color,
    );
  }
}
