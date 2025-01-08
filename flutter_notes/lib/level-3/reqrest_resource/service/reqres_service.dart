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

//Bu sayfada neler yaptık:
//1- IReqresService adında bir interface oluşturduk ve bu interface Dio sınıfından türedi.
//2- Bu interface içinde fetchResourceItems adında bir metot oluşturduk ve bu metotun dönüş tipini Future<ResourceModel> olarak belirledik.
//3- ReqresService adında bir sınıf oluşturduk ve bu sınıf IReqresService sınıfından türedi.
//4- Bu sınıfın içinde fetchResourceItems metotunu override ettik ve bu metotun içinde dio değişkeni ile get metotunu çağırdık.
//5- get metotunun dönüş değerini response değişkenine atadık.
//6- response değişkeninin statusCode özelliğini kontrol ettik ve eğer bu özellik HttpStatus.ok değerine eşitse response değişkeninin data özelliğini jsonBody değişkenine atadık.
//7- jsonBody değişkeninin Map<String, dynamic> türünde olup olmadığını kontrol ettik ve eğer bu koşul sağlanıyorsa jsonBody değişkenini ResourceModel sınıfından bir nesneye çevirdik.
//8- Bu sayede ReqresService sınıfı içindeki işlemleri gerçekleştirmiş olduk.
//9- _ReqresPath adında bir enum oluşturduk ve bu enum içinde unknown adında bir değer oluşturduk.
//10- Bu sayede _ReqresPath enum sınıfı içindeki işlemleri gerçekleştirmiş olduk.
//11- ReqresService sınıfı içinde _ReqresPath enum sınıfını kullanarak işlemleri gerçekleştirmiş olduk.
//12- Bu sayede ReqresService sınıfı içindeki işlemleri gerçekleştirmiş olduk.

