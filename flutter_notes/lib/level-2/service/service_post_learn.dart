import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notes/level-2/service/post_model.dart';

class ServicePostLearn extends StatefulWidget {
  const ServicePostLearn({super.key});

  @override
  State<ServicePostLearn> createState() => ServiceLearnState();
}

class ServiceLearnState extends State<ServicePostLearn> {
  bool _isLoading = false;
  late final Dio _dio;
  String? name = 'Servis (Post)';
  final _baseUrl = 'https://jsonplaceholder.typicode.com/';

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();
  final TextEditingController _userIdController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _dio = Dio(BaseOptions(baseUrl: _baseUrl));
    //* uygulamanın init state anında verileri çekmek için fonksyonu burada çalıştırırız.
  }

  void _changeIsLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> _sendItemToService(PostModel postModel) async {
    _changeIsLoading();
    final response = await _dio.post('posts', data: postModel);

    if (response.statusCode == HttpStatus.created) {
      name = 'Basarili';
    }
    _changeIsLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name ?? ''),
        actions: [
          _isLoading
              ? const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: CircularProgressIndicator.adaptive())
              : const SizedBox.shrink()
        ],
      ),
      body: Column(
        children: [
          TextField(
              controller: _titleController,
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(labelText: 'Title')),
          TextField(
              controller: _bodyController,
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(labelText: 'Body')),
          TextField(
              controller: _userIdController,
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.number,
              autofillHints: const [AutofillHints.creditCardNumber],
              decoration: const InputDecoration(labelText: 'UserId')),
          TextButton(
            onPressed: _isLoading
                ? null
                : () {
                    //* Aşağıda textlerin boş olmasığını kontrol edelim, ardından PostModel ile bunları alalım.
                    if (_titleController.text.isNotEmpty &&
                        _bodyController.text.isNotEmpty &&
                        _userIdController.text.isNotEmpty) {
                      final model = PostModel(
                        title: _titleController.text,
                        body: _bodyController.text,
                        userId: int.tryParse(_userIdController.text),
                      );
                      _sendItemToService(model);
                    }
                  },
            child: const Text('SEND'),
          ),
        ],
      ),
    );
  }
}
