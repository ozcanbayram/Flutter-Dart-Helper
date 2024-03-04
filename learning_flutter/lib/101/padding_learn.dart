import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 25, horizontal: 50),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              color: Colors.pinkAccent,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 50),
            child: Container(
              height: 100,
              color: Colors.pinkAccent,
            ),
          ),
        ]),
      ),
    );
  }
}

class ProjectPadding {
  //Paddingler bir projenin her yerinde aynı olmalıdır. Burada bir sınıf içerisinde tanımlayarak istediğimiz yerden bu padding değerlerine ulaşabiliriz.
  final projectPaddingVertical = EdgeInsets.symmetric(vertical: 50);
}
