// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_notes/product/global/resource_context.dart';
import 'package:provider/provider.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                context.read<ResourceContext>().clear();
              },
              icon: const Icon(Icons.remove))
        ],
        title: Text(
            context.read<ResourceContext>().model?.data?.length.toString() ??
                ''),
      ),
      body: Column(
        children: [
          Center(
            child: SizedBox(
              //sizedbox ile sarmalayarak boyut verebiliriz.
              height: 200,
              width: 200,
              child: Image.asset(
                ImageItems()
                    .ImageAppleBook, // item sınıfında yazılan image yolu.
                fit: BoxFit.cover,
                // cover, contain, fill, fitWeight, fitHeight, scaleDown...
              ),
            ),
          ),
          //assets klasörüne ve pubspec.yaml dosyalarına ekledikten sonta bu şekilde kullanabiliriz.
          SizedBox(
              height: 200,
              width: 200,
              child: Image.asset("assets/png/ic_book_apple.png")),
          //png klasörünü pubspec.yaml sayfamıza tanımladıktan sonra bu şekilde kullanabiliriz.

          PngImage(imageName: ImageItems().pcImage),
          // aşağıdaki PngImage sınıfı ile sadece resmin ismini vererek kullanabileceğimiz bir widget oluşturduk
        ],
      ),
    );
  }
}

//* png image sınıfı ile png klasöründeki image'ları kullanmayı kolaylaştıralım:
class PngImage extends StatelessWidget {
  const PngImage({
    super.key,
    required this.imageName,
  });

  final String imageName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 200,
      child: Image.asset(
        _imagePath, // item sınıfında yazılan image yolu.
        fit: BoxFit.cover,
      ),
    );
  }

  String get _imagePath => "assets/png/$imageName.png";
  // bu extract metodu ile iamge yolunu belirleriz.
  //sadece isim eklemek gerekir.
}

//* image için asset yolunu ayrı bir sınıfta yazarak kullanabiliriz:
class ImageItems {
  // ignore: non_constant_identifier_names
  final String ImageAppleBook = 'assets/book_apple.png';
  final String pcImage = 'ic_pc';
}
