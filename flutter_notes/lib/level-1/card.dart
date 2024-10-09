import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card'),
      ),
      body: Column(
        children: [
          //Aşağıdaki bazı card widgetlarını inceleyin.

          Card(
            // Card - 1
            margin: ProjectMargins.cardMargin,
            //Aşağıdaki sınıfta hazırlanan margin değeri
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            //shape için stadiumBorder, circleBorder... değerleri de verilebilir.
            child: const SizedBox(
              height: 100,
              width: 300,
              child: Center(child: Text('Card 1')),
            ),
          ),

          Card(
            // Card - 2
            margin: ProjectMargins.cardMargin,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: const SizedBox(
              height: 100,
              width: 300,
              child: Center(child: Text('Card 2')),
            ),
          ),

          _CustomCard(
            // extract widget olarak ayrılmış card tasarımı
            // Card - 3
            child: const SizedBox(
              height: 100,
              width: 300,
              child: Center(child: Text('Card 3')),
            ),
          ),

          const Padding(
            // card  - 4
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Card(
              //ListTile ile kullanılan card
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: Icon(Icons.album),
                    title: Text('The Enchanted Nightingale'),
                    subtitle:
                        Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ProjectMargins {
  static const cardMargin = EdgeInsets.all(10);
  static final roundedRectangleBorder =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
}

class _CustomCard extends StatelessWidget {
  _CustomCard({required this.child});
  final Widget child;
  final roundedRectangleBorder =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: ProjectMargins.cardMargin,
      child: child,
    );
  }
}
