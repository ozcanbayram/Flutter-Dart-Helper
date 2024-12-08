// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
// servisten gelecek olan verileri modellememiz gerekir.
// örneğin post modeldeki servisten gelen veri aşağıdaki gibi olsun:
/*
{
    "userId": 1,
    "id": 1,
    "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
    "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
  },
*/

//? class PostModel {
//?   int userId;
//?   int id;
//?   String title;
//?   String body;
//   //! bir sınıf içindeki değişkenleri initilaze etmeliyiz. Aşağıdaki örneklerde initilaze etme yöntemlerini inceleyelim:
//? }

// ----------------------------------------------------------------------------------------------------->

import 'package:equatable/equatable.dart';
// import 'package:flutter/material.dart';

class PostModel1 {
  //* Bu modelde değişkenlerin null gelebileceğini belirttik.
  int? userId;
  int? id;
  String? title;
  String? body;
}

class PostModel2 {
  //* Bu modelde degiskenler için constroctor oluşturarak uygulama başladığı zaman değerlerin geleceğini belirttik.
  int userId;
  int id;
  String title;
  String body;
  PostModel2(
    this.userId,
    this.id,
    this.title,
    this.body,
  );
}

class PostModel3 {
  //* Bu modelde degiskenler için constroctor oluşturarak uygulama başladığı zaman değerlerin geleceğini belirttik.
  //* ama değişkenlerin başına "final" yazarak, bu değerlerin değişmeyeceğini, uygulama oluştuğu zaman verilen değer olarak kalacağını belirttik.
  final int userId;
  final int id;
  final String title;
  final String body;
  PostModel3(
    this.userId,
    this.id,
    this.title,
    this.body,
  );
}

class PostModel4 {
  //* Bu modelde degiskenler için constroctor oluşturarak uygulama başladığı zaman değerlerin geleceğini belirttik.
  //* ama değişkenlerin başına "final" yazarak, bu değerlerin değişmeyeceğini, uygulama oluştuğu zaman verilen değer olarak kalacağını belirttik.
  //* ve required ile named parametre verdik. bu kullanıldığı zaman, değişen için değer istenmesine ve zorunlu olmasına yarar.
  final int userId;
  final int id;
  final String title;
  final String body;

  PostModel4(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body});
}

class PostModel5 {
  //* Bu modelde degiskenleri private tanımladık (_userId) ve daha sonra gelecek olan değerler ile eşitledik.
  final int _userId;
  // ignore: unused_field
  final int _id;
  // ignore: unused_field
  final String _title;
  // ignore: unused_field
  final String _body;

  // bu model kullanılınca private tanımlandığı için buradaki bir nesneye erişilemez.
  // erişilmesini istiyorsak encapsulation işlemi yapabiliriz:
  int get userId => _userId;
  //artık userId nesensine erişilebilir.

  PostModel5(
      {required int userId,
      required int id,
      required String title,
      required String body})
      : _userId = userId,
        _id = id,
        _title = title,
        _body = body;
}

class PostModel6 {
  //* Bu modelde degiskenleri private tanımladık (_userId) ve daha sonra gelecek olan değerler farklı bir yöntem ile eşitledik. AMA:
  //* late kullanarak, değerlerin daha sonra geleceğini belirttik
  //? late -> değer sonradan gelecek.   late final -> değer constructor anında sonradan gelecek.
  // ignore: unused_field
  late final int _userId;
  // ignore: unused_field
  late final int _id;
  // ignore: unused_field
  late final String _title;
  // ignore: unused_field
  late final String _body;

  PostModel6(
      {required int userId,
      required int id,
      required String title,
      required String body}) {
    userId = userId;
    id = id;
    title = title;
    body = body;
  }
}

class PostModel7 {
  //* Bu modelde required vermek yeinde değişkenlere default değer atıyoruz.
  //* bir değer gelmemesi durumunda verilen değerler geçerli olacaktır.
  // ignore: unused_field
  late final int _userId;
  // ignore: unused_field
  late final int _id;
  // ignore: unused_field
  late final String _title;
  // ignore: unused_field
  late final String _body;

  PostModel7({
    int userId = 0,
    int id = 0,
    String title = '',
    String body = '',
  }) {
    userId = userId;
    id = id;
    title = title;
    body = body;
  }
}

class PostModel8 extends Equatable {
  //! Veriler servisten geliyor ise önerilen model budur.
  //* burada veriler internetten bir servisten gelecek ise nullable olarakt tanımlarız.
  final int? userId;
  final int? id;
  final String? title;
  String? body; // degistirileceği için final değil

  PostModel8({this.userId, this.id, this.title, this.body});

  //: body değerini kontrollü bir şekilde değiştiren metot:
  void changeBody(String? value) {
    if (value != null && value.isNotEmpty) {
      body = value;
    }
  }

  //* copyWith:
  //* verdiğimiz değişkenlerde değişenleri kopyalıyor değiştiriyor gibi düşünebiliriz.
  //* kullanımı -> userExapmle1.copyWith(title: 'copyWith ile değişti')
  //* freez gibi paketler de bu işe yarar
  PostModel8 copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) {
    return PostModel8(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }

  //! Equatable için gerekli olan props getter'ı:

  @override
  List<Object?> get props => [userId, id, title, body];

  //! Equatable:
  //? Equatable, Dart'ta nesnelerin eşitlik kontrolünü kolaylaştırmak için kullanılan bir pakettir.
  // kullanmak için  equatable paketini ekleriz ve classa extend ederiz

  //! NOT:
  /*
  Equatable'ın Faydaları:
  Eşitlik kontrolu kolayligi saglar: Equatable ile nesneleri doğrudan içeriklerine göre karsilastirabiliriz.
  props sadece belirtilen alanlari kontrol eder. gereksiz bellek karşılaştırmaları önler.
  bunu başka türlü paket kullanmamak için == operatorune override yapabilirdik. Bu konuyu Dart notlarında bulabilirsiniz.(Custom Operator)
  
  *kullanım kolaylıgı örneği:
  final post1 = PostModel8(userId: 1, id: 1, title: 'Hello', body: 'World');
  final post2 = PostModel8(userId: 1, id: 1, title: 'Hello', body: 'World');
  print(post1 == post2); // true (Equatable olmadan false olurdu)
  */

  //! Immutable model yapmak:
  //? Bir sınıfı immutable (değiştirilemez) yapmak, oluşturulduktan sonra nesnenin durumunun değiştirilememesi anlamına gelir.
  //? bunun için tüm alanları final tanımlarız
  //? Sınıfın özelliklerini yalnızca (constructor) ile belirleriz.
  //? opsiyonel olarak sınıfın başına @immutable ekleriz. sınıfı daha okunaklı hale getirir ve immutable olması gerektiğini belirtir.
  //! Bu örnekte immutable yapmamamın sebebi örneklerde body değerini değiştirmemdir.
  //! immutable ile de body değerini değiştirebilirdik fakat yeni bir nesne üretmemiz gerekirdi. Çünkü immutable olursa değerler değişmez.
  //? Nasıl yapardık:
  //* Yeni bir nesne döndüren changeBody metodu
  /*
  PostModel8 changeBody(String? value) {
    if (value != null && value.isNotEmpty) {
      return copyWith(body: value);
    }
    return this; // Geçerli nesneyi döndür, değişiklik yok.
  }
  */
}
