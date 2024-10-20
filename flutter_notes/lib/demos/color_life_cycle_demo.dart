import 'package:flutter/material.dart';
import 'package:flutter_notes/demos/color_demos_view.dart';

class ColorLifeCycleView extends StatefulWidget {
  const ColorLifeCycleView({super.key});

  @override
  State<ColorLifeCycleView> createState() => _ColorLifeCycleViewState();
}

//* Bu sayfada action'da olan clear butonunun sayfaya eklenmiş olan color demos'u default değerine döndürmesini istiyoruz.

class _ColorLifeCycleViewState extends State<ColorLifeCycleView> {
  Color? _backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color LifeCycle'),
        actions: [
          IconButton(
              onPressed: _changeBackground, icon: const Icon(Icons.clear))
        ],
      ),
      body: Column(
        children: [
          const Spacer(),
          Expanded(
              child: ColorDemos(
            initialColor: _backgroundColor,
            //! parametre ile ilk renk değerini atadık.
            //! initstate sayfa çizilmeden önce çalışan yaşam döngüsüdür.
          ))
        ],
      ),
    );
  }

  void _changeBackground() {
    setState(() {
      _backgroundColor = Colors.transparent;
    });
  }
}
