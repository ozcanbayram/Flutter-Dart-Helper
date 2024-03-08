import 'package:flutter/material.dart';

class MyCollectionsDemos extends StatefulWidget {
  const MyCollectionsDemos({super.key});

  @override
  State<MyCollectionsDemos> createState() => _MyCollectionsDemosState();
}

class _MyCollectionsDemosState extends State<MyCollectionsDemos> {
  late final List<CollectionModel>
      _items; // _items değişkeninin CollectionModels sınıfından verileri alması için.

  @override
  void initState() {
    super.initState();
    _items = CollectionItems()._items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
      ),
      body: Padding(
        padding: PaddingUtility().paddingHorizontal,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return _CategoryCard(model: _items[index]);
          },
          itemCount: _items.length,
        ),
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    super.key,
    required CollectionModel model,
  }) : _model = model;

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: PaddingUtility().paddingBottom,
      child: SizedBox(
        height: 300,
        child: Padding(
          padding: PaddingUtility().paddingGeneral,
          child: Column(
            children: [
              Expanded(
                  child: Image.asset(
                _model.image,
                fit: BoxFit.fill,
              )),
              Padding(
                padding: PaddingUtility().paddingTop,
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
      ),
    );
  }
}

class CollectionModel {
  final String image;
  final String title;
  final double price;

  //Constructor
  CollectionModel(
      {required this.image, required this.title, required this.price});
}

class CollectionItems {
  late final List<CollectionModel>
      _items; // _items değişkeninin CollectionModels sınıfından verileri alması için.

  CollectionItems() {
    _items = [
      CollectionModel(
          image: ProjectImages.imageCollection,
          title: 'Abstract Art',
          price: 3.4),
      CollectionModel(
          image: ProjectImages.imageCollection,
          title: 'Abstract Art',
          price: 3.4),
      CollectionModel(
          image: ProjectImages.imageCollection,
          title: 'Abstract Art',
          price: 3.4),
      CollectionModel(
          image: ProjectImages.imageCollection,
          title: 'Abstract Art',
          price: 3.4)
    ];
  }
}

class PaddingUtility {
  final paddingTop = EdgeInsets.only(top: 10);
  final paddingBottom = EdgeInsets.only(bottom: 20);
  final paddingGeneral = EdgeInsets.all(20);
  final paddingHorizontal = EdgeInsets.symmetric(horizontal: 20);
}

class ProjectImages {
  static const imageCollection = 'assets/png/image.png';
}
