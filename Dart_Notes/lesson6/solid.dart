// ignore_for_file: public_member_api_docs, sort_constructors_first
//* SOLID kavrami? Single Responsibility Principle (SRP)
void main(List<String> args) {
  IDatabase database = SQL();
  //Burada veriler SQL'den gelir fakat istediğimiz  zaman aşağıdaki gibi kolayca değiştirebiliriz.

  database = Mongo(); // Burada kolaylıkla mongodan veri alabilriz.
  database.write();
}

//* her sınıf kendi işini yapmalıdır.
//* UserManager sınıfında localization şlemi yapmak yerine onu ayrı bir sınıf içierisinde yapabiliriz.

class UserManager {
  String name;
  UserManager({
    required this.name,
  });
  void changeName(String name) {
    this.name = name;
  }
}

class UserLocalization {
  //! UserManager ve localization işlemleri için ortak sınıf.
  final UserManager manager; //* UserManager sınıfından bir nesne (özellik)

  UserLocalization(this.manager);

  void updateNameAndLocalization(args) {
    manager.changeName('a');
    changeLozcalization();
  }

  void changeLozcalization() {
    print('object');
  }
}
//? Her iki sınıf için de UserManager sınıfının özelliklerini kullanmış olduk.

//! ***********************************
//! ***********************************
//! ***********************************
//! ***********************************

//* Open Closed Princible (OCP) - Açık kapalılık kuralı
//* Core classlar kendi içerisinde değiştirilememeli, ama kendisinden büyüyenler ile büyüyebilmelidir.
class Product {
  final String name;
  final String money;

  Product(this.name, this.money);
}

//? Bu classa özellik kazandırmak için:
class ProductCategories extends Product {
  ProductCategories(super.name, super.money);
  final String category = 'x category';
}

//! ***********************************
//! ***********************************
//! ***********************************
//! ***********************************

//? Liskov Substitution Principle (LSP)
//* Farklı databaseleri kullanmak için alt dallar üretebiliriz.

abstract class IDatabase {
  void write();
}

class SQL extends IDatabase {
  @override
  void write() {}
}

class Mongo extends IDatabase {
  @override
  void write() {}
}

//! ***********************************
//! ***********************************
//! ***********************************
//! ***********************************

//?  Interface Segregation Principle (ISP)
abstract class IUserOperation implements IUserLocation, ILanguage {
  // void location();
  // asagida baska bir abstract sınıf içerisinde yazmak daha dogru bir kullanimdir.
  void write();
  void read();
  void delete();
  // void language();
}

abstract class IUserLocation {
  void location();
}

abstract class ILanguage {
  void language();
}
