// view servis istekleri burada atılacak

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notes/level-3/reqrest_resource/service/reqres_service.dart';
import 'package:flutter_notes/level-3/reqrest_resource/view/reqres_view.dart';

abstract class ReqresViewModel extends State<ReqresView> {
  late final IReqresService reqresService;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    reqresService =
        ReqresService(Dio(BaseOptions(baseUrl: 'https://reqres.in/api')));
  }
}
