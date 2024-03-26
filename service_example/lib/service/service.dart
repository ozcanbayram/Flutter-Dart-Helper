import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:service_example/service/post_service.dart';

import '../model/model.dart';

class MyServiceView extends StatefulWidget {
  const MyServiceView({super.key});

  @override
  State<MyServiceView> createState() => _MyServiceViewState();
}

class _MyServiceViewState extends State<MyServiceView> {
  List<ServiceModel>? _items; // Our List
  String? name;
  bool _isLoading = false;
  late final Dio _dio;
  final _baseUrl = 'https://jsonplaceholder.typicode.com/';

  late final PostService _postService;

  void _changeLoading() {
    //Yüklenirken dönen loading
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  //fetch datas from service
  Future<void> fetchPostItems() async {
    //Bu  metot ile servise bağlanalım, bağlantıyı kontrol edelim
    _changeLoading();
    final response =
        await Dio().get('https://jsonplaceholder.typicode.com/users');
    if (response.statusCode == HttpStatus.ok) {
      final _datas = response.data;
      //print('201 SUCCESSFULL');
      if (_datas is List) {
        setState(() {
          _items = _datas.map((e) => ServiceModel.fromJson(e)).toList();
          //  print('Data is a List (Succesfull)');
        });
      } else {
        //  print('Data is Not a List');
      }
    }
    _changeLoading();
  }

  Future<void> fetchPostItemsAdvance() async {
    //Bu  metot ile servise bağlanalım, bağlantıyı kontrol edelim
    _changeLoading();
    _items = await _postService.fetchPostItemsAdvance();
    _changeLoading();
  }

  @override //Loading
  void initState() {
    // initState ile sayfa yüklenmeden önce fetchPostItems metodunu çalıştırarak verileri çekelim
    super.initState();
    _dio = Dio(BaseOptions(baseUrl: _baseUrl));
    _postService = PostService();
    fetchPostItemsAdvance();
    name = 'Service Example 1 (JsonPlaceholder)';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          _isLoading
              ? const CircularProgressIndicator.adaptive()
              : SizedBox.shrink()
        ],
        title: Text(name ?? ''),
        backgroundColor: const Color.fromARGB(255, 64, 243, 70),
      ),
      body: _items == null
          ? Placeholder()
          : ListView.builder(
              itemCount: _items?.length ?? 0,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    _PostCard(model: _items?[index]),
                  ],
                );
              },
            ),
    );
  }
}

// Card
class _PostCard extends StatelessWidget {
  const _PostCard({
    super.key,
    required ServiceModel? model,
  }) : _model = model;

  final ServiceModel? _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            isThreeLine: true,
            leading: const Icon(Icons.person, size: 50),
            title: Text(_model?.name ?? ''),
            trailing: const Icon(Icons.chevron_right),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(_model?.username ?? ''),
                const Text('Adress:'),
                Row(
                  children: [
                    Text(_model?.address?.street ?? ''),
                    const Text(' '),
                    Text(_model?.address?.suite ?? ''),
                  ],
                ),
                Text(_model?.phone ?? ''),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
