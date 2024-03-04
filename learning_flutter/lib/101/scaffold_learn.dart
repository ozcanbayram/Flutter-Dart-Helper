import 'package:flutter/material.dart';
import 'package:flutter_full_learn_one/101/container_sized_box_learn.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scaffold samples'),
      ),
      body: const Text('Hello'),
      backgroundColor: Color.alphaBlend(Colors.red, Colors.teal),
      extendBody:
          true, //aşağıdaki barin içerisinde bir şey var ise o açılıyor.]
      floatingActionButton: FloatingActionButton(
        //yucarlak bir buton oluşturur
        onPressed: () {
          // Tıklayınca aşağıdaki kolar çalışır.
          showModalBottomSheet(
              // Tıklanınca aşağıda bir container oluşturduk ve açılıp kapanabiliyor.
              context: context,
              builder: (context) => Container(
                    height: 200,
                  ));
        },
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked, // Butonun konumunu ayarlar
      drawer: const Drawer(), //Sol üste menü çizgileri ekler
      bottomNavigationBar: Container(
        // BottomNavigationBar'ı bir Container içerisine alarak boyutlandırmak gibi özllikler verebilriz.
        height: 100,
        //container_sized_box_learn.dart sayfasında oluşturduğumuz container decoration'unu burada kullanalım:
        decoration: ProjectContainerDecoration(),
        child: BottomNavigationBar(items: const [
          //Aşağıda bar oluşturmak, labellar ve ikonlar eklemek
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm_rounded), label: 'x'),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_time_filled_sharp), label: 'y'),
        ]),
      ),
    );
  }
}
