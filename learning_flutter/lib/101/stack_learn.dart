import 'package:flutter/material.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Container(
            height: 100,
            color: Colors.amber,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              height: 100,
              color: Colors.teal,
            ),
          ),
          Positioned(
            //100'lük bir alan verir ve bunu bulunduğu widget içerisinde sıkıştırarak kullanabiliriz.
            right: 50,
            left: 50,
            top: 25,
            height: 100,
            child: Container(
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
