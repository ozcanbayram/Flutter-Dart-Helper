import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_notes/level-2/service/post_model.dart';

class PostService {
  final Dio _dio;
  PostService()
      : _dio =
            Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com/'));

  Future<List<PostModel>?> fetchPostItemsAdvence() async {
    try {
      final response = await _dio.get(ServicePaths.posts.name);
      if (response.statusCode == HttpStatus.ok) {
        //! Eğer servisten verilerin gelmesi başarılıysa:
        //? _datas adında bir değişken oluştur ve servisten gelen response'nin datasına eşitle
        final datas = response.data;

        if (datas is List) {
          //* Eğer _datas bir listeyse, bu listeyi maple
          //* yani PostModel modelinden gelen _items listesini bu servisten gelen _datas listesi ile değiştir.
          return datas.map((e) => PostModel.fromJson(e)).toList();
        }
      }
    } on DioException catch (exception) {
      ShowDioErrorMessages.showDioError(exception);
      return null;
    }
    return null;
  }

  Future<bool> sendItemToService(PostModel postModel) async {
    try {
      final response =
          await _dio.post(ServicePaths.posts.name, data: postModel);
      return response.statusCode == HttpStatus.created;
    } on DioException catch (exception) {
      ShowDioErrorMessages.showDioError(exception);
      return false;
    }
  }

  Future<bool> putItemToService(PostModel postModel, int id) async {
    try {
      final response =
          await _dio.post('${ServicePaths.posts.name}/$id', data: postModel);
      return response.statusCode == HttpStatus.ok;
    } on DioException catch (exception) {
      ShowDioErrorMessages.showDioError(exception);
      return false;
    }
  }

  Future<bool> deleteItemToService(int id) async {
    try {
      final response = await _dio.post(
        '${ServicePaths.posts.name}/$id',
      );
      return response.statusCode == HttpStatus.ok;
    } on DioException catch (exception) {
      ShowDioErrorMessages.showDioError(exception);
      return false;
    }
  }
}

enum ServicePaths { posts, comments }

class ShowDioErrorMessages {
  static void showDioError(error) {
    if (kDebugMode) {
      print(' Hata burada *******  ${error.message}');
    }
  }
}
