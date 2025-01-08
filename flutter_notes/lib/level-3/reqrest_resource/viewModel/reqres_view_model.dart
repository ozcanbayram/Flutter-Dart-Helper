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

//Bu sayfada neler yaptık:
//1- ReqresViewModel adında bir sınıf oluşturduk ve bu sınıf Loadingstatefull sınıfından türedi.
//2- Bu sınıfın içinde ReqresView sınıfından türetilen bir nesne oluşturduk.
//3- Bu sınıfın içinde bir liste oluşturduk ve bu listeye Data tipinde bir liste atadık.
//4- reqresService adında bir IReqresService türünde bir değişken oluşturduk.
//5- initState metodu ile reqresService değişkenine ReqresService sınıfından bir nesne atadık.
//6- _fetch adında bir metot oluşturduk ve bu metot içinde changeLoading metotunu çağırdık.
//7- _fetch metodu içinde reqresService değişkeni ile fetchResourceItems metotunu çağırdık ve bu metotun dönüş değerini resource değişkenine atadık.
//8- _fetch metodu içinde changeLoading metotunu çağırdık.
//9- Bu sayede ReqresViewModel sınıfı içindeki işlemleri gerçekleştirmiş olduk.