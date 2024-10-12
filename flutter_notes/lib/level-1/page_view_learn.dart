import 'package:flutter/material.dart';
import 'package:flutter_notes/level-1/container.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({super.key});

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageView'),
      ),
      body: PageView(
        // kaydırılabilir widgetlar yapmamıza yarar.

        // controller: PageController(viewportFraction: 0.7),
        children: [
          Container(color: Colors.red),
          const ContainerView(),
          Container(color: Colors.amber),
          Container(color: Colors.blue),
        ],
      ),
    );
  }
}
