// Bir ekran oalcak
// Bu ekranda 3 buton olacak ve bunlara basınca renk değişecek
// Seçili olan buton selectedIcon olsun

import 'package:flutter/material.dart';

class ColorDemos extends StatefulWidget {
  const ColorDemos({super.key, required this.initialColor});

  final Color? initialColor; //! sayfada görünecek default renk değeri

  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
  Color? _backgroundColor;

  void changeBackgrountColors(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  void initState() {
    super.initState();
    _backgroundColor = widget.initialColor ?? Colors.transparent;
    //! sayfada görünecek default renk değeri eşitlenir eğer null gelirse transparan değerini alır.
  }

  //! bu sayfadan giden haberler ve parametreler diğer sayfada çalışır ve ColorDemos componentini değiştirir. ama action'daki clear'a basınca renk değişmesi için
  //! o sayfadan bu sayfaya bir haber gelmesi gerekir. Bu tür durumlarda yani alt widget ile üst widget iletişim durumlarında başka lifeCycle yöntemleri kullanırız.
  //! mesela didUpdateWidget:

  @override
  void didUpdateWidget(covariant ColorDemos oldWidget) {
    super.didUpdateWidget(oldWidget);
    //? oldWidget -> Widget'in bir önceki durumudur. Şu anki değişmemiş olan widget oalrak da düşünebiliriz.
    // print(oldWidget.initialColor != _backgroundColor); //-> debugg yöntemi. true-false döner.
    // inspect(widget);  // -> debugg yöntemi
    if (widget.initialColor != _backgroundColor && widget.initialColor != null) {
      //Eğer widget'in eski durumu ile şimdiki durumu aynı değil ise (değişmiştir) ve null değilse, aşağıdaki işlemi yap:
      changeBackgrountColors(widget.initialColor!);
    }
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
    required this.color,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(width: 20, height: 20, color: color);
  }
}
