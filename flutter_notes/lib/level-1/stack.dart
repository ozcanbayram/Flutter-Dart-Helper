import 'package:flutter/material.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.red,
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: Container(
              color: Colors.blue,
              height: 100,
            ),
          ),
          Positioned(
            //Positioned.fill tüm alanı kaplar.
            //posizyon belirleme
            width: 25,
            height: 100,
            bottom: 0,
            child: Container(
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}

//Widgetların üst üste bindiği yerlerde stack kullanılır.
