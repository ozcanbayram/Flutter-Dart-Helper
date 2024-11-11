import 'package:flutter/material.dart';

class MyCollectionDemo extends StatefulWidget {
  const MyCollectionDemo({super.key});

  @override
  State<MyCollectionDemo> createState() => _MyCollectionDemoState();
}

class _MyCollectionDemoState extends State<MyCollectionDemo> {
  late final List<CollectionModel> _items;
  //? -> initstate anında (Csontroctor anında) CollectionModel sınıfından değer alacak ve daha sonra değişmeyecek bir liste

  @override
  void initState() {
    //? uygulamanın başlangıç anında _items listesine değer verme işlemi burada yapılır.
    super.initState();
    _items = CollectionItems().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Collection Demo'),
      ),
      body: ListView.builder(
        padding: Paddingutility().paddingHorizontal,
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return _CollectionCard(
            model: _items[index],
          );
        },
      ),
    );
  }
}

class _CollectionCard extends StatelessWidget {
  const _CollectionCard({
    super.key,
    required CollectionModel model,
  }) : _model = model;

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: Paddingutility().paddingBottom,
      child: Padding(
        padding: Paddingutility().paddingAll,
        child: Column(
          children: [
            Image.asset(
              _model.imagePath,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: Paddingutility().paddingTop,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(_model.title),
                  Text(_model.price.toString()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//* Model sınıfı:
class CollectionModel {
  final String imagePath;
  final String title;
  final double price;

  CollectionModel(
      {required this.imagePath, required this.title, required this.price});
}

//* Collection items sınıfı
class CollectionItems {
  late final List<CollectionModel> items;

  CollectionItems() {
    items = [
      CollectionModel(
          imagePath: ProjectImage.imageCollection,
          title: 'First Art Collection',
          price: 5.3),
      CollectionModel(
          imagePath: ProjectImage.imageCollection,
          title: 'Second Art Collection',
          price: 8.0),
      CollectionModel(
          imagePath: ProjectImage.imageCollection,
          title: 'Third Art Collection',
          price: 10.5),
      CollectionModel(
          imagePath: ProjectImage.imageCollection,
          title: 'Fourth Art Collection',
          price: 15.6),
    ];
  }
}

//* Padding sınıfı
class Paddingutility {
  final paddingTop = const EdgeInsets.only(top: 8.0);
  final paddingBottom = const EdgeInsets.only(bottom: 16.0);
  final paddingAll = const EdgeInsets.all(16.0);
  final paddingHorizontal = const EdgeInsets.symmetric(horizontal: 16);
}

//* Image sınıfı
class ProjectImage {
  static const imageCollection = 'assets/png/ic_collection.png';
}
