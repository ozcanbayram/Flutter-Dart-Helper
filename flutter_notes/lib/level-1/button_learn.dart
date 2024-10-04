import 'package:flutter/material.dart';

class ButtonView extends StatelessWidget {
  const ButtonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Buttons')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //? Butonlar için tek tek örnekler oluşturalım:

            //! TEXT BUTTON:
            TextButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => const SizedBox(
                    height: 250,
                    child: Center(child: Text('TextButton Tıklandı')),
                  ),
                );
              },
              child: const Text(
                  'Text Button'), //Text yerine herhangi bir widget koyulabilir.
            ),

            //! ELEVATED BUTTON
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.red),
              ),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => const SizedBox(
                    height: 250,
                    child: Center(child: Text('Elevated Button Tıklandı')),
                  ),
                );
              },
              child: const Text('Elevated Button'),
            ),

            //? Daha customize edilimiş bir elevated button:
            //! ELEVATED BUTTON
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.resolveWith(
                  //* Atanan state ile if kontrolü yapıldı. butonun durumuna göre renk belirlendi.
                  //* Mesela tıklandığı anda yeşil oalcak şekilde ayarlayalım:
                  //* pressed gibi disabled, error, focused, hovered.. gibi bir çok özellik verilebilir.

                  (states) {
                    if (states.contains(WidgetState.pressed)) {
                      return Colors.green;
                    }
                    return null;
                  },
                ),
              ),

              //* bir diger style verme şekli:
              //* style: ElevatedButton.styleFrom(backgroundColor: Colors.red),

              //? Stilleri tema ile de verebiliriz:
              //* style: Theme.of(context)textTheme.headLine4,

              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => const SizedBox(
                    height: 250,
                    child:
                        Center(child: Text(' Custom Elevated Button Tıklandı')),
                  ),
                );
              },
              child: const Text('Elevated Button'),
            ),

            //! ICON BUTTON
            IconButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => const SizedBox(
                    height: 250,
                    child: Center(child: Text('Icon Button Tıklandı')),
                  ),
                );
              },
              icon: const Icon(Icons.home),
            ),

            //! FLOAT ACTION  BUTTON
            FloatingActionButton(
              // onPresseed : null, -> Tıklanma özelliğini kapatır.
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => const SizedBox(
                    height: 250,
                    child: Center(child: Text('Float Action Button Tıklandı')),
                  ),
                );
              },
              backgroundColor: Colors.lightGreenAccent,
              child: const Icon(
                Icons.add,
                color: Colors.black,
              ),
            ),

            //! OUTLINED BUTTON
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 65, 65, 65),
                // shape: CircleBorder(),
              ),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => const SizedBox(
                    height: 250,
                    child: Center(child: Text('Outline Button Tıklandı')),
                  ),
                );
              },
              child: const Text('Outlined Button'),
            ),

            //! Herhangi bir Widget'a tıklanma-buton özelliği kazandırabiliriz.
            //* Örneğin bir Text Widget'imiz olsun ve bunu InkWell ile satmalayarak OnTap özelliği ile
            //* tıklanabilme özelliği kazandıralım.
            InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => const SizedBox(
                    height: 250,
                    child: Center(
                      child: Text(
                          'InkWell ile buton görevi gören Text\'e tıklandı'),
                    ),
                  ),
                );
              },
              child: const Text(
                  'InkWell widgeti ile buton özelliği verilmiş widget'),
            ),
          ],
        ),
      ),
    );
  }
}
