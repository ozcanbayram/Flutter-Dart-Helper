import 'package:flutter/material.dart';
import 'package:flutter_notes/level-3/reqrest_resource/model/resource_model.dart';
import 'package:flutter_notes/level-3/reqrest_resource/service/reqres_service.dart';

class ReqresProvider extends ChangeNotifier {
  final IReqresService reqresService;

  List<Data> resource = [];

  bool isLoading = false;

  void _changeLoading() {
    isLoading = !isLoading;
    notifyListeners();
  }

  ReqresProvider(this.reqresService) {
    _fetch();
  }

  Future<void> _fetch() async {
    _changeLoading();
    resource = (await reqresService.fetchResourceItems())?.data ?? [];
    _changeLoading();
  }
}

// Bu sayfadan neler yaptık?
// 1- ReqresProvider adında bir sınıf oluşturduk ve bu sınıf ChangeNotifier sınıfından türedi.
// 2- Bu sınıfın içinde reqresService adında bir IReqresService türünde bir değişken oluşturduk.
// 3- Bu sınıfın içinde bir liste oluşturduk ve bu listeye Data tipinde bir liste atadık.
// 4- Bu sınıfın içinde bir isLoading adında bir değişken oluşturduk ve bu değişkenin başlangıç değerini false olarak atadık.
// 5- _changeLoading adında bir metot oluşturduk ve bu metot içinde isLoading değişkenini ! işareti ile tersine çevirdik ve notifyListeners metotunu çağırdık.
// 6- ReqresProvider sınıfının constructor'ında _fetch metotunu çağırdık.
// 7- _fetch adında bir metot oluşturduk ve bu metot içinde _changeLoading metotunu çağırdık.
// 8- _fetch metodu içinde reqresService değişkeni ile fetchResourceItems metotunu çağırdık ve bu metotun dönüş değerini resource değişkenine atadık.
// 9- _fetch metodu içinde _changeLoading metotunu çağırdık.
// 10- Bu sayede ReqresProvider sınıfı içindeki işlemleri gerçekleştirmiş olduk.
