class User2 {
  final String name;

  int _money;
  //money için Encapsulate field:
  //değişkeni private çeviriyor
  int get money => _money;
  //get ile computed value oluşturuyor. ve moneyi dönürüyor.

  set money(int? money) {
    //işlemi yapıp money'i set ediyor
    //bu işin amacı burada bir kontrol oluşturabilmemizi sağlar.
    //örneğin money sıfırdan küçükse set etme işlemini yapabiliriz:
    // if (money < 0) {
    //   return;
    // }

    //ya da yukarıdaki gibi null kontrolü de yapabiliriz.
    // if (money == null) {
    //   _money = 0;
    // } else {
    //   _money = money;
    // }

    // bu kontrolü tek satır ile daha hızlı da yapabiliriz:
    _money = money == null ? 0 : money;
  }

  final int? age;
  final String? city;

  late final userCode;

  User2(this.name, this._money, this.age, this.city) {
    //constructor
    userCode = (city ?? 'ist') + name;
  }
}
