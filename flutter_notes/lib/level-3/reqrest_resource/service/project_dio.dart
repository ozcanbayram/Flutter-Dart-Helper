//baseUrl i burada bir class içinde tutalım

import 'package:dio/dio.dart';

mixin ProjectDioMixin {
  final service = Dio(BaseOptions(baseUrl: 'https://reqres.in/api'));
}

//Bu sayfada neler yaptık:
//1- ProjectDioMixin adında bir mixin oluşturduk ve bu mixin içinde service adında bir değişken oluşturduk.
//2- service değişkenine Dio sınıfından bir nesne oluşturduk ve bu nesnenin BaseOptions sınıfından bir nesne oluşturduk ve bu nesnenin baseUrl özelliğine 'https://reqres.in/api' değerini atadık.
//3- Bu sayede ProjectDioMixin mixin sınıfı içindeki işlemleri gerçekleştirmiş olduk.
// bunu nerede kullanabiliriz? 
// reqres_service.dart dosyasında kullanabiliriz.