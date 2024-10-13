import 'package:flutter/material.dart';
import 'package:flutter_notes/level-1/container.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({super.key});

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController = PageController(viewportFraction: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageView'),
      ),
      body: PageView(
        // kaydırılabilir widgetlar yapmamıza yarar.

        controller: _pageController,
        // controller: PageController(viewportFraction: 0.7),
        // padEnds: false, // ortadan ya da başlangıçtan balama durumu
        children: [
          Container(color: Colors.red),
          const ContainerView(),
          Container(color: Colors.amber),
          Container(color: Colors.blue),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              _pageController.previousPage(
                  duration: const Duration(seconds: 1), curve: Curves.easeIn);
            },
            child: const Icon(Icons.chevron_left_outlined),
          ),
          const SizedBox(
            width: 8,
          ),
          FloatingActionButton(
            onPressed: () {
              _pageController.nextPage(
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInCirc );
            },
            child: const Icon(Icons.chevron_right_outlined),
          ),
        ],
      ),
    );
  }
}
