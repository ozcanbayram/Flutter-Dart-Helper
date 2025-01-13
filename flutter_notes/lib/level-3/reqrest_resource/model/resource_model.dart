import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'resource_model.g.dart';

@JsonSerializable()
class ResourceModel {
  List<Data>? data;

  ResourceModel({this.data});

  //* Bu kodu aşağıda build runner ve json annotation kullanarak düzenleyelim::
  factory ResourceModel.fromJson(Map<String, dynamic> json) {
    return _$ResourceModelFromJson(json);
    // if (json['data'] != null) {
    //   data = <Data>[];
    //   json['data'].forEach((v) {
    //     data!.add(Data.fromJson(v));
    //   });
    // }
  }

  //* Bu kodu aşağıda build runner ve json annotation kullanarak düzenleyelim::
  Map<String, dynamic> toJson() {
    return _$ResourceModelToJson(this);
    // final Map<String, dynamic> data = <String, dynamic>{};
    // if (this.data != null) {
    //   data['data'] = this.data!.map((v) => v.toJson()).toList();
    // }
    // return data;
  }
}

@JsonSerializable()
class Data extends Equatable {
  final int? id;
  final String? name;
  final int? year;
  final String? color;
  final String? pantoneValue;
  final String? price;

  const Data(
      {this.id,
      this.name,
      this.year,
      this.color,
      this.pantoneValue,
      this.price});

  //?aşağıdaki kodları build runner ve json annotation kullanarak yeniden yazalım:

  factory Data.fromJson(Map<String, dynamic> json) {
    return _$DataFromJson(json);
    // id = json['id'];
    // name = json['name'];
    // year = json['year'];
    // color = json['color'];
    // pantoneValue = json['pantone_value'];
  }

  //BU kodu aşağıda build runner ve json annotation kullanarak yeniden yazalım:
  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = <String, dynamic>{};
  //   data['id'] = id;
  //   data['name'] = name;
  //   data['year'] = year;
  //   data['color'] = color;
  //   data['pantone_value'] = pantoneValue;
  //   return data;
  // }

  //*build runner ve json annotation kullanarak yeniden yazalım:
  Map<String, dynamic> toJson() {
    return _$DataToJson(this);
  }

  @override
  //(Equatable ile eşitlik kontrolü. Eğer aşağıdakiler aynıysa veri aynıdır)
  List<Object?> get props => [id, name, price];
}

// Json to dart sitesinden gelen json verisi
/*
Bu sayfada neler yaptık:
1- ResourceModel adında bir sınıf oluşturduk ve bu sınıfın içinde data adında bir liste oluşturduk.
2- Bu sınıfın içinde bir constructor oluşturduk ve bu constructorun içinde data adında bir liste oluşturduk ve bu listenin başlangıç değerini null olarak atadık.
3- Bu sınıfın içinde bir fromJson metodu oluşturduk ve bu metotun içinde data değişkenine null değer atadık.
4- fromJson metodu içinde json değişkeninin 'data' özelliğinin null olup olmadığını kontrol ettik ve eğer bu özellik null değilse data değişkenine bir liste oluşturduk ve bu listenin içinde json değişkeninin 'data' özelliğinin her bir elemanını Data sınıfından bir nesneye çevirdik.
5- Bu sınıfın içinde bir toJson metodu oluşturduk ve bu metotun dönüş tipini Map<String, dynamic> olarak belirledik.
6- toJson metodu içinde data değişkenine null değer atadık.
7- toJson metodu içinde data değişkeninin null olup olmadığını kontrol ettik ve eğer bu koşul sağlanıyorsa data değişkenini map metotunu kullanarak data değişkenini bir listeye çevirdik.
8- Bu sayede ResourceModel sınıfı içindeki işlemleri gerçekleştirmiş olduk.
9- Data adında bir sınıf oluşturduk ve bu sınıfın içinde id, name, year, color ve pantoneValue adında değişkenler oluşturduk.
10- Bu sınıfın içinde bir constructor oluşturduk ve bu constructorun içinde id, name, year, color ve pantoneValue adında değişkenler oluşturduk ve bu değişkenlerin başlangıç değerlerini null olarak atadık.
11- Bu sınıfın içinde bir fromJson metodu oluşturduk ve bu metotun içinde id, name, year, color ve pantoneValue adında değişkenlere null değer atadık.
12- fromJson metodu içinde json değişkeninin 'id', 'name', 'year', 'color' ve 'pantone_value' özelliklerinin null olup olmadığını kontrol ettik ve eğer bu özellikler null değilse bu özelliklerin değerlerini ilgili değişkenlere atadık.
13- Bu sınıfın içinde bir toJson metodu oluşturduk ve bu metotun dönüş tipini Map<String, dynamic> olarak belirledik.
14- toJson metodu içinde data adında bir Map oluşturduk ve bu Map'in içinde id, name, year, color ve pantoneValue değişkenlerinin değerlerini atadık.
15- Bu sayede Data sınıfı içindeki işlemleri gerçekleştirmiş olduk.
*/

//Build runner ne işe yarar (https://pub.dev/packages/build_runner)
//Build runner, projenizdeki kodları çalıştırarak, kodlarınızı derleyen ve çalıştıran bir araçtır.

enum StatusCode {
  @JsonValue(200)
  succes,
  @JsonValue(500)
  weird
}
