import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../model/model.dart';

class MyServicePost extends StatefulWidget {
  const MyServicePost({super.key});

  @override
  State<MyServicePost> createState() => _MyServiceViewState();
}

class _MyServiceViewState extends State<MyServicePost> {
  String? name;
  bool _isLoading = false;
  late final Dio _dio;
  final _baseUrl = 'https://jsonplaceholder.typicode.com/';

  final TextEditingController _nameEditingController = TextEditingController();
  final TextEditingController _userNameEditingController =
      TextEditingController();
  final TextEditingController _userIdEditingController =
      TextEditingController();

  void _changeLoading() {
    //Yüklenirken dönen loading
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  @override //Loading
  void initState() {
    // initState ile sayfa yüklenmeden önce fetchPostItems metodunu çalıştırarak verileri çekelim
    super.initState();
    _dio = Dio(BaseOptions(baseUrl: _baseUrl));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          _isLoading ? CircularProgressIndicator.adaptive() : SizedBox.shrink()
        ],
        title: Text(name ?? ''),
        backgroundColor: const Color.fromARGB(255, 64, 243, 70),
      ),
      body: Column(
        children: [
          TextField(
            controller: _nameEditingController,
            decoration: InputDecoration(labelText: 'Name'),
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
          ),
          TextField(
            textInputAction: TextInputAction.next,
            controller: _userNameEditingController,
            decoration: InputDecoration(labelText: 'Username'),
          ),
          TextField(
            controller: _userIdEditingController,
            keyboardType: TextInputType.number,
            autofillHints: [AutofillHints.creditCardNumber],
            decoration: InputDecoration(labelText: 'UserId'),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Send'),
          ),
        ],
      ),
    );
  }
}
