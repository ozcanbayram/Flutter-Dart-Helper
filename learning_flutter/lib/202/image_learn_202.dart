import 'package:flutter/material.dart';

class ImageLearn202 extends StatefulWidget {
  const ImageLearn202({super.key});

  @override
  State<ImageLearn202> createState() => _ImageLearn202State();
}

class _ImageLearn202State extends State<ImageLearn202> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Image.asset(ImagePaths.apple_book_second.Path()),
    );
  }
}

enum ImagePaths {
  // ignore: constant_identifier_names
  apple_book_second;
}

extension ImagePathsExtension on ImagePaths {
  String Path() {
    return 'assets/png/$name.png';
  }

  Widget toWidget() {
    return Image.asset(Path());
  }
}
