import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_notes/level-3/reqrest_resource/model/resource_model.dart';

abstract class IReqresService {
  IReqresService(this.dio); //url'i disaridan alacagiz. UI den gelecek
  final Dio dio;

  Future<ResourceModel?> fetchResourceItems(); //internete cikacak olan metot
}

enum _ReqresPath { unknown }

class ReqresService extends IReqresService {
  ReqresService(super.dio);

  @override
  Future<ResourceModel?> fetchResourceItems() async {
    final response = await dio.get('/${_ReqresPath.unknown.name}');

    if (response.statusCode == HttpStatus.ok) {
      final jsonBody = response.data;

      if (jsonBody is Map<String, dynamic>) {
        return ResourceModel.fromJson(jsonBody);
      }
    }
    return null;
  }
}
