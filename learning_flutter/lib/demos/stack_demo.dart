import 'package:flutter/material.dart';
import 'package:flutter_full_learn_one/core/random_image.dart';

class StackDemoView extends StatelessWidget {
  const StackDemoView({super.key});

  final _cardHeight = 50.0;
  final _cardWidth = 200.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Expanded(
          flex: 4,
          child: Stack(
            alignment: Alignment.center, //card'ı ortalar
            children: [
              Positioned.fill(
                bottom: _cardHeight /
                    2, //fotografin yerden yuksekligini _carHeight'in yarsıı kadar yapar
                child: RandomImage(height: 1000),
              ), //RandomImage sınıfından bir resim aldık.
              Positioned(
                height: _cardHeight, //card yuksekligi
                width: _cardWidth, //card uzunlugu
                bottom: 0, //cardın asagidan uzakligi
                child: _CardCustom(),
              )
            ],
          ),
        ),
        const Spacer(
          flex: 6,
        )
      ]),
    );
  }

  Card _CardCustom() {
    return Card(
      color: Colors.white,
      shape: BeveledRectangleBorder(),
    );
  }
}
