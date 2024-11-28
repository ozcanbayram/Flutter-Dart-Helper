import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notes/level-2/service/post_model.dart';

class ServiceLearn extends StatefulWidget {
  const ServiceLearn({super.key});

  @override
  State<ServiceLearn> createState() => ServiceLearnState();
}

class ServiceLearnState extends State<ServiceLearn> {
  //* PostModel modelindeki itemleri listeleyelim.
  List<PostModel>? _items;

  // Loading bar için bool:
  bool _isLoading = false;

  void _changeIsLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  @override
  void initState() {
    super.initState();
    //* uygulamanın init state anında verileri çekmek için fonksyonu burada çalıştırırız.
    fetchPostItems();
  }

  //* Dio ile intnernetteki servise erişelim:(Bu kullanım doğru bir kullanım değildir. her şeyi bir arada görebilmek için burada yazıyorum.)
  //* asenkron olmalıdır.
  Future<void> fetchPostItems() async {
    _changeIsLoading();

    final response =
        await Dio().get('https://jsonplaceholder.typicode.com/posts');

    if (response.statusCode == HttpStatus.ok) {
      //! Eğer servisten verilerin gelmesi başarılıysa:

      //? _datas adında bir değişken oluştur ve servisten gelen response'nin datasına eşitle
      final datas = response.data;

      if (datas is List) {
        //* Eğer _datas bir listeyse, bu listeyi maple
        //* yani PostModel modelinden gelen _items listesini bu servisten gelen _datas listesi ile değiştir.
        setState(() {
          _items = datas.map((e) => PostModel.fromJson(e)).toList();
        });
      }
    }

    _changeIsLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Servis'),
        actions: [
          _isLoading
              ? const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: CircularProgressIndicator.adaptive(),
                )
              : const SizedBox.shrink()
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: _items?.length ?? 0,
        //* PostModelden gelecek olan ?items kadar uzunluk, eğer null ise 0 uzunluk.
        itemBuilder: (context, index) {
          return _PostCard(model: _items?[index]);
        },
      ),
    );
  }
}

class _PostCard extends StatelessWidget {
  const _PostCard({
    super.key,
    required PostModel? model,
  }) : _model = model;

  final PostModel? _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        title: Text(_model?.title ?? 'veri yok'),
        subtitle: Text(
          _model?.body ?? 'veri yok',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
