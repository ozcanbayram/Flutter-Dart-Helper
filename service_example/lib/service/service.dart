import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../model/model.dart';

class MyServiceView extends StatefulWidget {
  const MyServiceView({super.key});

  @override
  State<MyServiceView> createState() => _MyServiceViewState();
}

class _MyServiceViewState extends State<MyServiceView> {
  List<ServiceModel>? _items;
  String? name;
  bool _isLoading = false;

  void _changeLoading() { //Yüklenirken dönen loading
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> fetchPostItems() async { //Bu  metot ile servise bağlanalım, bağlantıyı kontrol edelim
    _changeLoading();
    final response =
        await Dio().get('https://jsonplaceholder.typicode.com/users');
    if (response.statusCode == HttpStatus.ok) {
      final _datas = response.data;
      print('201 SUCCESSFULL');
      if (_datas is List) {
        setState(() {
          _items = _datas.map((e) => ServiceModel.fromJson(e)).toList();
          print('Data is a List (Succesfull)');
        });
      } else {
        print('Data is Not a List');
      }
    }
    _changeLoading();
  }

  @override 
  void initState() { // initState ile sayfa yüklenmeden önce fetchPostItems metodunu çalıştırarak verileri çekelim
    super.initState();
    fetchPostItems();
    name = 'Service Example';
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
      body: ListView.builder(
        itemCount: _items?.length ?? 0,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Card(
                child: Column(
                  children: [
                    ListTile(
                      isThreeLine: true,
                      leading: Icon(Icons.person, size: 50),
                      title: Text(_items?[index].name ?? ''),
                      trailing: Icon(Icons.chevron_right),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(_items?[index].username ?? ''),
                          Text('Adress:'),
                          Row(
                            children: [
                              Text(_items?[index].address?.street ?? ''),
                              Text(' '),
                              Text(_items?[index].address?.suite ?? ''),
                            ],
                          ),
                          Text(_items?[index].phone ?? ''),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
