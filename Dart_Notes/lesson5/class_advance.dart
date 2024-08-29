void main(List<String> args) {
  final user1 = _User('Ozcan', age: 21);
  print(user1.name);

  //* Kullanıcının yaşı 18 den büyük mü kontrolü:
  if (user1.age is int) {
    //! Burada is int ile int olup olmadığını kontrol edebiliriz.
    //! Bu null kontrolü yerine de kullanılabilir.
    if (user1.age! < 18) {
      print('Kullanicinin yasi 18 den kucuk');
    } else {
      print('Kullanicinin yasi 18 den buyuk');
    }
  }

  // kullancilarimin parasi var ama paranin tipi degisken olabilir
  // parasi olan admin o paramtresi bir isimde olabilir veya deger olablilir
  // tr yazacak yada orada 15 yazabilir
  // ekranda goster
  final _newType = user1.moneyType is String ? (user1.moneyType as String) : ""; 
  //! Dynamic türünü eğer Stringe çevirmişse ayrı, inte çevirimişse ayrı işlem yapmak için kullanılabilir.

  print(_newType + "A");
}

class _User {
  //? _ ile bu sınıfı private yaparız.
  final String name;
  int? age;

  dynamic moneyType;

  _User(this.name, {this.age});

  void updateMoneyWithString(String data) {
    //* dynamic'i string yapar
    moneyType = data;
  }

  void updateMoneyWithNumber(int number) {
    //* dynamic'i int yapar
    moneyType = number;
  }
}
