// polymorphism (çok biçimlilik)
// Aynı metotları farklı farklı sınıflarda kullanmak.

void main(List<String> args) {
  IUser user = Turk(); //* turk sınıfı için
  user.sayName();

  user = English(); //* english sınıfı için
  user.sayName();
}

abstract class IUser {
  //! Bu sınıfı diger sınıflarda iplement ederek özelleştirerek kullanalım.
  final String name;

  IUser(this.name);
  void sayName();
}

class Turk implements IUser {
  @override
  String get name => 'Ozcan';

  @override
  void sayName() {
    print('Hoşgeldiniz');
  }
}

class English implements IUser {
  @override
  String get name => 'Micheal';

  @override
  void sayName() {
    print('Welcome');
  }
}
