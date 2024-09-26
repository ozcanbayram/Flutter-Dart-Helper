// ignore_for_file: public_member_api_docs, sort_constructors_first
//* SOLID kavrami? Single Responsibility Principle (SRP)
void main(List<String> args) {}

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