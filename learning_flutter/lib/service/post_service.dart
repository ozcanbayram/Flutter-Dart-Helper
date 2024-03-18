import 'dart:io';

import 'package:dio/dio.dart';

import 'post_model.dart';

abstract class IPostService {
  Future<bool> addItemToService(PostModel postModel);
  Future<bool> putItemToService(PostModel postModel, int id);
  Future<List<PostModel>?> fetchPostItemsAdvance();
  Future<bool> deleteItemToService(int id);
}

class PostService implements IPostService {
  final Dio _dio;
  PostService()
      : _dio =
            Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com/'));

  @override
  Future<bool> addItemToService(PostModel postModel) async {
    try {
      final response =
          await _dio.post(_PostServicePaths.posts.name, data: postModel);
      return response.statusCode == HttpStatus.created;
    } on DioException catch (error) {
      print(error.message);
    }
    return false;
  }

  @override
  Future<bool> putItemToService(PostModel postModel, int id) async {
    try {
      final response = await _dio.put('${_PostServicePaths.posts.name}/$id',
          data: postModel);
      return response.statusCode == HttpStatus.ok;
    } on DioException catch (error) {
      print(error.message);
    }
    return false;
  }

  @override
  Future<bool> deleteItemToService(int id) async {
    try {
      final response = await _dio.put('${_PostServicePaths.posts.name}/$id');
      return response.statusCode == HttpStatus.ok;
    } on DioException catch (error) {
      print(error.message);
    }
    return false;
  }

  @override
  Future<List<PostModel>?> fetchPostItemsAdvance() async {
    try {
      final response =
          await Dio().get('https://jsonplaceholder.typicode.com/posts');

      if (response.statusCode == HttpStatus.ok) {
        final _datas = response.data;

        if (_datas is List) {
          return _datas.map((e) => PostModel.fromJson(e)).toList();
        }
      }
    } on DioException catch (error) {
      print(error.message);
    }
    return null;
  }
}

enum _PostServicePaths { posts, comments }
