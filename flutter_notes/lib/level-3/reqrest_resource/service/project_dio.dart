//baseUrl i burada bir class içinde tutalım

import 'package:dio/dio.dart';

mixin ProjectDioMixin {
  final service = Dio(BaseOptions(baseUrl: 'https://reqres.in/api'));
}
