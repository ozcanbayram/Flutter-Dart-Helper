import 'package:flutter/material.dart';
import 'package:flutter_notes/core/random_image.dart';

class StackDemoView extends StatelessWidget {
  const StackDemoView({super.key});

  @override
  Widget build(BuildContext context) {
    const double cardHeight = 50;
    const double width = 150;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack Demo View'),
      ),
      body: const Column(
        children: [
          Expanded(
            flex: 4,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned.fill(
                  bottom: 0,
                  child: RandomImage(),
                ),
                Positioned(
                  height: cardHeight,
                  width: width,
                  bottom: cardHeight / 2,
                  child: Card(
                    color: Colors.amber,
                    child: Center(
                        child: Text(
                      'Image Text',
                      style: TextStyle(color: Colors.black),
                    )),
                  ),
                )
              ],
            ),
          ),
          Spacer(
            flex: 6,
          ),
        ],
      ),
    );
  }
}
