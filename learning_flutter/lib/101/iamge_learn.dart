import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 400,
            height: 250,
            child: PngImage(
              name: ImageItems().appleWithBookSecond,
            ),
          ),
          Image.network(
            'https://storage.googleapis.com/cms-storage-bucket/70760bf1e88b184bb1bc.pn',
            errorBuilder: (context, error, stackTrace) => Icon(
              Icons.error,
            ), //eğer internetten ver gelmezse error ikonunu gösterir
          )
        ],
      ),
    );
  }
}

class ImageItems {
  // İmage isimlerini burada değişkenler içerisinde tutarak gerektiğinde name değişkeni ile kullanabiliriz.
  final String appleWithBook = "assets/apple_book.png";
  final String appleWithBookSecond = "apple_book_second";
}

class PngImage extends StatelessWidget {
  // bu sınıf ile image için sadece name değişken değeri girilerek fotoğraf eklenebilir.
  const PngImage({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _nameWithPath,
      fit: BoxFit.contain,
      height: 300,
    );
  }

  String get _nameWithPath =>
      'assets/png/$name.png'; // Burada retrun edilen değeri extract metot haline getirdik.
}
