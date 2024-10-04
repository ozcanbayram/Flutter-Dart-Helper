import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  const ColorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color Learn'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 300,
              height: 300,
              color: ColorItems().porsche,
            ),
            Container(
              width: 300,
              height: 300,
              color: Theme.of(context).primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}

class ColorItems {
  final Color porsche = const Color(0xffEDBF61);
  final Color sulu = const Color.fromARGB(255, 66, 247, 0);
}

//* Bu yontem haricinde tema ile de renk verebiliriz.
//* Ya da temadeki örneğin errorColro rengi gibi istedigimiz rengi degistirebilriz.
