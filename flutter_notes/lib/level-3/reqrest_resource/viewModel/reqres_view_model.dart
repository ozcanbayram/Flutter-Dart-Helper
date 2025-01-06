// view servis istekleri burada atılacak

import 'package:flutter_notes/level-3/reqrest_resource/model/resource_model.dart';
import 'package:flutter_notes/level-3/reqrest_resource/product/loading_statefull.dart';
import 'package:flutter_notes/level-3/reqrest_resource/service/project_dio.dart';
import 'package:flutter_notes/level-3/reqrest_resource/service/reqres_service.dart';
import 'package:flutter_notes/level-3/reqrest_resource/view/reqres_view.dart';

abstract class ReqresViewModel extends Loadingstatefull<ReqresView>
    with ProjectDioMixin {
  List<Data> resource = [];

  late final IReqresService reqresService;
  @override
  void initState() {
    super.initState();
    reqresService = ReqresService(service);
    _fetch();
  }

  Future<void> _fetch() async {
    changeLoading();
    resource = (await reqresService.fetchResourceItems())?.data ?? [];
    changeLoading();
  }
}
