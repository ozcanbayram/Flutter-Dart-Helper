import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card'),
      ),
      body: Column(
        children: [
          Card(
            //color: Colors.white,
            shape: CircleBorder(),
            margin: ProjectMargin().projectMargin,
            //elevation: 10, //Arkadaki gölge
            child: SizedBox(
              width: 100,
              height: 100,
              child: Center(child: Text('Hello')),
            ),
          ),
          Card(
            shape: StadiumBorder(),
            color: Theme.of(context)
                .colorScheme
                .error, //Error rengini temadan alırız
            margin: ProjectMargin().projectMargin,
            //elevation: 10, //Arkadaki gölge
            child: SizedBox(
              width: 250,
              height: 100,
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(),
            color: Colors.amber, //Error rengini temadan alırız
            margin: ProjectMargin().projectMargin,
            //elevation: 10, //Arkadaki gölge
            child: SizedBox(
              width: 250,
              height: 100,
            ),
          ),
          _CustomCard(
            child: SizedBox(
              width: 250,
              height: 100,
              child: Center(child: Text('CustomCard sınıfı ile hazırlandı')),
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectMargin {
  final projectMargin = EdgeInsets.all(10);
}

//Borders:
// CircleBorder(), -> Yuvarlak
// StadiumBorder(), -> Stadyum şeklini alır
// RoundedRectangleBorder() -> Kenarları keskin (Border Radius özelliği ile oynanabilir)

// Her seferinde card yazamak için aşağıda bir widget yapalım:
class _CustomCard extends StatelessWidget {
  const _CustomCard({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(),
      color: Color.fromARGB(255, 85, 121, 228), //Error rengini temadan alırız
      margin: ProjectMargin().projectMargin, //elevation: 10, //Arkadaki gölge
      child: child,
    );
  }
}
