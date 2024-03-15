import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_full_learn_one/service/post_model.dart';

class ServiceLearn extends StatefulWidget {
  const ServiceLearn({super.key});

  @override
  State<ServiceLearn> createState() => _ServiceLearnState();
}

class _ServiceLearnState extends State<ServiceLearn> {
  List<PostModel>? _items;
  String? name;
  //Loading göstermek için:
  bool _isLoading = false;
  late final Dio _dio; //Dio'yu her yerde oluşturmak yerine 1 kere tanımlarız.
  final _baseUrl = 'https://jsonplaceholder.typicode.com/';

  void changeLoading() {
    setState(() {
      _isLoading = !_isLoading; //her seferinde değeri tersine dönecek.
    });
  }

  @override
  void initState() {
    _dio = Dio(BaseOptions(baseUrl: _baseUrl)); //Dio tanımlanıyor.
    super.initState();
    name = 'Ozcan';
    fetchPostItems();
  }

  Future<void> fetchPostItems() async {
    //Burada loafding için true yaparak bir verinin yükleneceğini belirtiriz.
    changeLoading();
    final response = await _dio.get('/posts');

    //dataları görmek için:
    if (response.statusCode == HttpStatus.ok) {
      //Veriler geliyorsa (OK)
      final _datas =
          response.data; //_datas değişkeninin içine response datalarını ati

      if (_datas is List) {
        //Eğer _datas listeyse dataları mapleyelim ve verileri PostModel'den alalım. SetState içinde yaparak ekranda gösterelim.
        setState(() {
          _items = _datas.map((e) => PostModel.fromJson(e)).toList();
        });
      }
    }

    changeLoading();
  }

  Future<void> fetchPostItemsAdvance() async {
    //Burada loafding için true yaparak bir verinin yükleneceğini belirtiriz.
    changeLoading();
    final response =
        await Dio().get('https://jsonplaceholder.typicode.com/posts');

    //dataları görmek için:
    if (response.statusCode == HttpStatus.ok) {
      //Veriler geliyorsa (OK)
      final _datas =
          response.data; //_datas değişkeninin içine response datalarını ati

      if (_datas is List) {
        //Eğer _datas listeyse dataları mapleyelim ve verileri PostModel'den alalım. SetState içinde yaparak ekranda gösterelim.
        setState(() {
          _items = _datas.map((e) => PostModel.fromJson(e)).toList();
        });
      }
    }

    changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          _isLoading
              ? Center(child: CircularProgressIndicator())
              : SizedBox.shrink()
        ],
        title: Text(name ?? ''),
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 20),
        itemCount: _items?.length ?? 0,
        itemBuilder: (context, index) {
          return _PostCard(
              model: _items?[index]); //Extract widget ile oluşturuldu.
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
      child: ListTile(
        //verileri göstermek için itemse git indexlerin içindeki title'i getir. Eğer boş ise '' getir.
        title: Text(_model?.title ?? ''),
        subtitle: Text(_model?.body ?? ''),
      ),
    );
  }
}
