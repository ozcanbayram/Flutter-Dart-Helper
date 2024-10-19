import 'package:flutter/material.dart';
import 'package:flutter_notes/demos/color_demos_view.dart';

class ColorLifeCycleView extends StatefulWidget {
  const ColorLifeCycleView({super.key});

  @override
  State<ColorLifeCycleView> createState() => _ColorLifeCycleViewState();
}

class _ColorLifeCycleViewState extends State<ColorLifeCycleView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color LifeCycle'),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.clear))],
      ),
      body: const Column(
        children: [Spacer(), Expanded(child: ColorDemos())],
      ),
    );
  }
}
