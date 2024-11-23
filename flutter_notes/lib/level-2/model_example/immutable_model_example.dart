// ignore_for_file: public_member_api_docs, sort_constructors_first
//*Burada immutable olan bir modelin önerilen basit bir örneğini oluşturacağız.
//! Immutable model yapmak:
//? Bir sınıfı immutable (değiştirilemez) yapmak, oluşturulduktan sonra nesnenin durumunun değiştirilememesi anlamına gelir.
//? bunun için tüm alanları final tanımlarız
//? Sınıfın özelliklerini yalnızca (constructor) ile belirleriz.
//? opsiyonel olarak sınıfın başına @immutable ekleriz. sınıfı daha okunaklı hale getirir ve immutable olması gerektiğini belirtir.
//! Bu konuyu model_learn.dart sayfasında daha detaylı ele aldım. Burada sadece daha spesifik kısmını özetleyerek ele alıyorum.

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
class ImmutableModelExample extends Equatable {
  final int? id;
  final String? name;
  final String? title;
  final String? body;

  const ImmutableModelExample(this.id, this.name, this.title, this.body);

  ImmutableModelExample copyWith({
    int? id,
    String? name,
    String? title,
    String? body,
  }) {
    return ImmutableModelExample(
      id ?? this.id,
      name ?? this.name,
      title ?? this.title,
      body ?? this.body,
    );
  }

  //equatable: eşitlik kontrolü için
  // kullanım:
  /*
    final post2 = PostModel8(userId: 1, id: 1, title: 'Hello', body: 'World');
    print(post1 == post2); // true (Equatable olmadan false olurdu)
  */
  @override
  List<Object?> get props => [id, name, title, body];

  @override
  String toString() {
    return 'ImmutableModelExample(id: $id, name: $name, title: $title, body: $body)';
    /*
    toString metodu, bir nesnenin metinsel bir temsilini döndüren bir metottur. 
    Dart'ta bir sınıf tanımladığınızda, nesnenizi yazdırmaya çalıştığınızda ya da loglama
    sırasında bir String gösterimine ihtiyaç duyulduğunda bu metot çağrılır.
    */
  }
}
