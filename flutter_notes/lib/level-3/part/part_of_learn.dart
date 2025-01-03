import 'package:flutter/material.dart';
part './part_appbar.dart';

// part of ile ayrı dosyada tanımlanan bir widgetin özelliklerini bu şekilde kullanabiliriz.
// private bir widget oluşturmak için bu yöntemi kullanabiliriz.
// bu sayede kodumuz daha düzenli ve okunabilir olacaktır. iki dosya arasında bağlantıyı sağlamış oluruz.

class PartOfLearn extends StatefulWidget {
  const PartOfLearn({super.key});

  @override
  State<PartOfLearn> createState() => _PartOfLearnState();
}

class _PartOfLearnState extends State<PartOfLearn> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: _PartOfAppBar(),
    );
  }
}
