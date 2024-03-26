import 'dart:io';

import 'package:dio/dio.dart';

import '../model/model.dart';

class PostService {
  final Dio _dio;
  PostService()
      : _dio =
            Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com/'));

  //Send to service
  Future<bool> addItemToService(ServiceModel serviceModel) async {
    try {
      final response =
          await _dio.post(_PostServicePaths.users.name, data: serviceModel);
      return response.statusCode == HttpStatus.created;
    } on DioException catch (error) {
      print(error.message);
      return false;
    }
  }

  Future<List<ServiceModel>?> fetchPostItemsAdvance() async {
    try {
      //Bu  metot ile servise bağlanalım, bağlantıyı kontrol edelim
      final response = await _dio.get(_PostServicePaths.users.name);
      if (response.statusCode == HttpStatus.ok) {
        final _datas = response.data;
        if (_datas is List) {
          return _datas.map((e) => ServiceModel.fromJson(e)).toList();
        }
      }
    } on DioException catch (error) {
      print(error.message);

      return null;
    }
    return null;
  }
}

enum _PostServicePaths { users, comments }
