import 'package:flutter/material.dart';

class ColumnRowWidgets extends StatelessWidget {
  const ColumnRowWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column and Row'),
      ),
      body: Column(
        children: [
          //expanded widgeti ile tüm logolar ekranda eşit yere sahip olur 4 tanesi için her biri %25
          //responsive tasarımdır. yan çevirince yine %25 yer kaplar.
          //lex ile kaplayaacağı alan değerini belirleyebiliriz.

          /*
          Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(child: Container(color: Colors.amber)),
                  Expanded(child: Container(color: Colors.pink)),
                  Expanded(child: Container(color: Colors.green)),
                  Expanded(child: Container(color: Colors.blue)),
                ],
              )),
          Expanded(flex: 2, child: Container(color: Colors.red)),
          Expanded(flex: 2, child: Container(color: Colors.green)),
          Expanded(flex: 2, child: Container(color: Colors.blue)), */

          // 4+2+2+2
          Expanded(
            flex: 4, // %40
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(child: Container(color: Colors.amber)),
                Expanded(child: Container(color: Colors.pink)),
                Expanded(child: Container(color: Colors.green)),
                Expanded(child: Container(color: Colors.blue)),
              ],
            ),
          ),
          const Spacer(flex: 2), // 2lik bosluk verir
          const Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // ana konumu. hepsinin arasıan eşit boşluk bırakır.
              crossAxisAlignment: CrossAxisAlignment.center,
              //ara konumu
              children: [
                Text('a'),
                Text('a2'),
                Text('a3'),
              ],
            ),
          ),
          const Expanded(flex: 2, child: FlutterLogo()),
        ],
      ),
    );
  }
}
