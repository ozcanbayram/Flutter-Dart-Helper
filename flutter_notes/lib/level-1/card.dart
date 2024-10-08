import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Card(
          margin: ProjectMargins.cardMargin,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: const SizedBox(
            height: 100,
            width: 300,
            child: Center(child: Text('Card 1')),
          ),
        ),
        Card(
          margin: ProjectMargins.cardMargin,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: const SizedBox(
            height: 100,
            width: 300,
            child: Center(child: Text('Card 2')),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.album),
                  title: Text('The Enchanted Nightingale'),
                  subtitle:
                      Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                ),
                // _CustomCard(
                //     child: const SizedBox(
                //   height: 100,
                //   width: 300,
                //   child: Center(child: Text('Card 3')),
                // )),
              ],
            ),
          ),
        )
      ]),
    );
  }
}

class ProjectMargins {
  static const cardMargin = EdgeInsets.all(10);
  static final roundedRectangleBorder =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
}

class _CustomCard extends StatelessWidget {
  _CustomCard({super.key, required this.child});
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
