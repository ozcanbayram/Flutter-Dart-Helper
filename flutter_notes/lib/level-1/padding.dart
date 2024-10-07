import 'package:flutter/material.dart';

class PaddingLearnView extends StatelessWidget {
  const PaddingLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Padding'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10.0, //dikeyde 10 bosluk verir
          horizontal: 10, // sayfanın sagından ve solundan 10 bosluk belirler.
        ),
        child: Column(
          //Eğer ana widget'a padding verirsek içerisindekiler de buna göre hareket eder.
          children: [
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //Burada EdgeInsets.all gibi .only .symetrc gibi özellikleri de kullanabilriiz.
            // child:
            Container(color: Colors.white, height: 100),
            // ),
            Container(color: Colors.red, width: 200, height: 100),
            // const Padding(
            //   padding: EdgeInsets.only(top: 100.0),
            //yazinin üstünden 100 bosluk birakir
            // child:
            Padding(
              // iki farklı EdgeInsest'i toplayabiliriz:
              padding: const EdgeInsets.only(left: 10.0) +
                  const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                height: 100,
                color: Colors.amber,
              ),
            ),
            Padding(
              // iki farklı EdgeInsest'i toplayabiliriz:
              padding: ProjectPadding().paddingVertical,
              // aşağıdaki sınıfta hazırladığımız padding'i burada kullanabiliriz.
              child: Container(
                height: 100,
                color: Colors.greenAccent,
              ),
            ),
            // ),
          ],
        ),
      ),
    );
  }
}

//! Paddingleri daha iyi kullanabilmek için bir sınıf tanımlayabilir !!!
class ProjectPadding {
  final paddingVertical = const EdgeInsets.symmetric(vertical: 10);
  final paddingRightOnly = const EdgeInsets.only(right: 10);
}
