//* GENERICS HAKKINDA:
//? Generic: Tür güvenliğini sağlamak ve kod tekrarını önlemek için kullanılan bir yapıdır.
//? Generic sınıflar, fonksiyonlar ve metodlar oluşturulabilir.
//? Generic sınıflar, fonksiyonlar ve metodlar oluşturulurken, veri türü belirtilmez. Bu veri türü, kullanıldığı zaman belirlenir.

//! * * * * * 1 * * * * *

//* Generic ile belirlenen türün dışında bir tür kullanılmaya çalışıldığında hata alınır.
//* Önreğin:
import 'package:flutter/material.dart';

class GenericsExample {
  var names = <String>[];
  //* Bir liste oluşturuldu ve bu liste sadece String türünde veri alabilir.
  //* Çünkü generic olarak String türü belirtilmiştir. (<String>)
  void genericExample() {
    //* Bu metodda sadece String türünde veri eklenebilir.
    names.addAll(['Seth']); //* String veri ekleniyor.
    //! Yalnız aşağıda listeye String dışında bir veri eklemeye çalışıldığında hata alınır.
    // names.addAll([1]); //* Hata: The argument type 'int' can't be assigned to the parameter type 'String'.
  }
}

//! * * * * * 2 * * * * *

//* Generic kod tekrarını azaltmak için de kullanılır.
//* Örneğin: bir soyut sınıf (arayüz) oluşturalım ve bu sınıf Generic kullanmadan bir veriyi önbelleğe işlemi yapalım.
abstract class ObjectChaec {
  Object getByKey(String key);
  void setByKey(String key, Object value);
}

//* Şimdi de sadece metinsel ifadeleri önbelleğe kaydedebileceğimiz bir soyut sınıf yazalım.
abstract class StringCache {
  String getByKey(String key);
  void setByKEy(String key, String value);
}

//* Bu şekilde her bir kayıt edilecek tür için (Object,String...) farklı soyut sınıflar yerine;
//* Generic T type olarak tanımlayabiliriz.
//* T, geçici türdür. Bir geliştiricinin daha sonra tanımlayacağı bir tür olarak düşünebileceğiniz bir yer tutucudur.
//* Şimdi Generic kullanarak nasıl daha az kodla bu işlemi yapabileceğimizi inceleyelim:
abstract class Cache<T> {
  T getByKey(String key);
  void setByKey(String key, T value);

  //! NOT: bu örenkte yapılan önbelleğe kaydetme işlemini sadece bir metinsel anahtar kelime (String key) ile, bu metinsel anahtara atanacak olan bir değerin (T value)
  //! kayıt edilmesi işlemi olarak düşünebilrisiniz. Generic bir çok yerde kullanılabilir ve kod geliştirmeye fayda sağlayabilir.

  //? Genel türler (Generic), tüm bu arayüzleri oluşturma zahmetinden sizi kurtarabilir.
  //? Bunun yerine, bir tür parametresi alan tek bir arayüz oluşturabilirsiniz
}

//! * * * * * 3 * * * * *

//* Liste, Map, Set gibi veri yapıları için de Generic kullanılabilir.
//* Örneğin:
class CollectionGenerics {
  var names = <String>['Seth', 'Kathy', 'Lars']; //* Liste
  var uniqueNames = <String>{'Seth', 'Kathy', 'Lars'}; //* Set
  var pages = <String, String>{
    //* Map
    'index.html': 'Homepage',
    'about.html': 'About',
    'services.html': 'Services',
  };
  //* Burada generic kullandık mı:
  //* Evet, kullandık. Çünkü veri yapısının içindeki veri türü belirtilmiştir.

  /*
  Bir oluşturucu kullanırken bir veya daha fazla tür belirtmek için,
  türleri sınıf adından hemen sonra açılı parantez (<...>) içine koyun.
  */

  //* NOT: Generic kullanımı,
  //* veri türü belirtilmesi gereken durumlarda kullanılır.
  //* Dart genel tipleri somutlaştırılmıştır,
  //* yani çalışma zamanında tip bilgilerini taşırlar.
  //* Örneğin, bir koleksiyonun tipini test edebilirsiniz:
  var teamNames = <String?>[];

  CollectionGenerics() {
    // ignore: unused_local_variable
    var nameSet = Set<String>.of(names);
    //* Bunu yapmamızın amacı:
    //* names listesindeki verileri Set<String> türünde bir nameSet oluşturmak.
    //* Bu şekilde nameSet içinde sadece String türünde veri olabilir.
    //* Bunu Constructor içinde yapmalıyız.
    //* Çünkü bu işlemi yaparken veri yapısının içindeki veri türü belirtilmiş olmalıdır.

    // ignore: unused_local_variable
    var views = <int, View>{};
    //* Bu şekilde bir Map oluşturulduğunda,
    //* Map içindeki veri türü belirtilmiş olur.

    //* Yukarıda tanımladığımız teamNames'e eleman atayalım.
    teamNames.addAll(['asd', 'asd']);
    print(teamNames is List<String>);
    //* Bu şekilde teamNames listesindeki veri türünün String olduğunu görebiliriz.
  }
}

//! * * * * * 4 * * * * *

//? Parametreli türün kısıtlanması

//* Generic sınıfların ve metodların parametreli türlerini kısıtlayabiliriz.
//* Genel bir tür uygularken,
//* argüman olarak sağlanabilecek türleri sınırlamak isteyebilirsiniz,
//* böylece argüman belirli bir türün alt türü olmalıdır.
//* Bunu extends kullanarak yapabilirsiniz.

class SomeBaseClass {}

//? class Foo<T extends Object> {
//* Bu şekilde Foo sınıfı oluşturulduğunda,
//* T türü Object türünden bir alt tür olmalıdır.
//* Foo'ya T için sağlanan herhangi bir tip null edilemez olmalıdır.
//* Bu, T'nin Object türünden bir alt tür olmasını sağlar.
//? }

//* Object dışındaki diğer tiplerle de extends kullanabilirsiniz.
//* İşte SomeBaseClass'ı genişletmenin bir örneği,
//* böylece SomeBaseClass üyeleri T tipindeki nesnelerde çağrılabilir:
class Foo<T extends SomeBaseClass> {
  //* Bu şekilde Foo sınıfı oluşturulduğunda,
  //* T türü SomeBaseClass türünden bir alt tür olmalıdır.
  //* Foo'ya T için sağlanan herhangi bir tip SomeBaseClass
  //* türünden bir alt tür olmalıdır.
  @override
  String toString() => 'Instance of "foo<$T>"';
}

class Extender extends SomeBaseClass {
  //* SomeBaseClass'ı veya alt türlerinden herhangi birini genel
  //* argüman olarak kullanmakta bir sakınca yoktur:
  var someBaseClassFoo = Foo<SomeBaseClass>();
  var extenderFoo = Foo<Extender>();
  //* Hiçbir genel argüman belirtmemeniz de sorun değil:
  var foo = Foo();
  //?print(foo); --> Instance of 'Foo<SomeBaseClass>'

  //!SomeBaseClass dışındaki herhangi bir türün belirtilmesi bir hatayla sonuçlanır:
  //* var foo = Foo<Object>();

  //? Bu, Object türünün SomeBaseClass türünden bir alt tür olmadığı anlamına gelir.
  //? Bu nedenle, Foo<Object> türü Foo sınıfının T tür parametresi için geçerli bir argüman değildir.

  /*
  Özetle, Foo sınıfı, T türü SomeBaseClass türünden bir alt tür olmalıdır.
  Bu, Foo sınıfının SomeBaseClass türünden bir alt türü olan Extender sınıfı için geçerlidir.
  Eğer T türü SomeBaseClass türünden bir alt tür değilse, bir hata alırsınız.
  Foo sınıfının T türü SomeBaseClas türünden olmasını bu şekilde belirleriz: 
  class Foo<T extends SomeBaseClass> {}
  Eğer SomeBaseClass yerine başka bir sınıf belirlemek istersek, şu şekilde yaparız:
  class Foo<T extends BaşkaBirSınıf> {} Bu sınıf String olabilir, int olabilir, Object olabilir...
   */

}
