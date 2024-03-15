import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_full_learn_one/service/post_model.dart';

class ServicePostLearn extends StatefulWidget {
  const ServicePostLearn({super.key});

  @override
  State<ServicePostLearn> createState() => _ServicePostLearnState();
}

class _ServicePostLearnState extends State<ServicePostLearn> {
  String? name;
  //Loading göstermek için:
  bool _isLoading = false;
  late final Dio _dio; //Dio'yu her yerde oluşturmak yerine 1 kere tanımlarız.
  final _baseUrl = 'https://jsonplaceholder.typicode.com/';

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();
  final TextEditingController _idController = TextEditingController();

  void changeLoading() {
    setState(() {
      _isLoading = !_isLoading; //her seferinde değeri tersine dönecek.
    });
  }

  @override
  void initState() {
    _dio = Dio(BaseOptions(baseUrl: _baseUrl)); //Dio tanımlanıyor.
    super.initState();
  }

  //veriler TextField'lar ile alındıkran sonra verileri servise post etmek için bir istek fonksiyonu yazarız.
  Future<void> addItemToService(PostModel postModel) async {
    changeLoading();
    final response = await _dio.post('posts', data: postModel);
    if (response.statusCode == HttpStatus.created) {
      name = 'Basarili';
      print(name);
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          //Servise data gönderelim
          children: [
            TextField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
                controller: _titleController,
                decoration: InputDecoration(labelText: 'Title')),
            TextField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
                controller: _bodyController,
                decoration: InputDecoration(labelText: 'Body')),
            TextField(
                controller: _idController,
                keyboardType: TextInputType.number,
                autofillHints: [AutofillHints.creditCardNumber],
                decoration: InputDecoration(labelText: 'id')),
            TextButton(
              onPressed: _isLoading
                  ? null
                  : () {
                      if (_titleController.text.isNotEmpty &&
                          _bodyController.text.isNotEmpty &&
                          _idController.text.isEmpty) {
                        //Boş değillerse bir model oluşturup PostModel'e veri gönderelim.
                        final model = PostModel(
                            body: _bodyController.text,
                            title: _titleController.text,
                            id: int.tryParse(_idController.text)
                            // sayısal değeri int.tryParse ile alırız.
                            );
                        addItemToService(model);
                      }
                    },
              child: const Text('Send'),
            )
          ],
        ),
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
