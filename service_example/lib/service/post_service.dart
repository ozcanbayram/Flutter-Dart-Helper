import 'dart:io';

import 'package:dio/dio.dart';

import '../model/model.dart';

abstract class IPostService {
  Future<bool> addItemToService(ServiceModel serviceModel);
  Future<bool> deleteItemToService(int id);
  Future<bool> putItemToService(ServiceModel serviceModel, int id);
  Future<List<ServiceModel>?> fetchPostItemsAdvance();
}

class PostService implements IPostService {
  final Dio _dio;
  PostService()
      : _dio =
            Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com/'));

  // Send to service
  @override
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

  // Delete to service
  @override
  Future<bool> deleteItemToService(int id) async {
    try {
      final response = await _dio.post('${_PostServicePaths.users.name}/$id');
      return response.statusCode == HttpStatus.created;
    } on DioException catch (error) {
      print(error.message);
      return false;
    }
  }

  // Update to service
  @override
  Future<bool> putItemToService(ServiceModel serviceModel, int id) async {
    try {
      final response = await _dio.put('${_PostServicePaths.users.name}/$id',
          data: serviceModel);
      return response.statusCode == HttpStatus.ok;
    } on DioException catch (error) {
      print(error.message);
      return false;
    }
  }

// Fetch from service
  @override
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
