import 'package:flutter/material.dart';

abstract class Loadingstatefull<T extends StatefulWidget> extends State<T> {
  bool isLoading = false;

  void changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }
}

//Bu sayfada neler yaptık:
//1- Loadingstatefull adında bir sınıf oluşturduk ve bu sınıf StatefulWidget sınıfından türedi.
//2- Bu sınıfın içinde bir isLoading adında bir değişken oluşturduk ve bu değişkenin başlangıç değerini false olarak atadık.
//3- changeLoading adında bir metot oluşturduk ve bu metot içinde setState metotunu çağırdık.
//4- setState metodu içinde isLoading değişkenini ! işareti ile tersine çevirdik.
//5- Bu sayede Loadingstatefull sınıfı içindeki işlemleri gerçekleştirmiş olduk.
