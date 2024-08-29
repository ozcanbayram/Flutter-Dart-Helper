// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  final user1 = _User('Ozcan', age: 21);
  print(user1.name);

  //* Kullanıcının yaşı 18 den büyük mü kontrolü:
  if (user1.age is int) {
    //! Burada is int ile int olup olmadığını kontrol edebiliriz.  is! ise bu değil mi anlamına gelir.
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

  // xxxxxxxxxxxxxxxxxxxxxxxxxx

  int money1 = 50;
  int money2 = 50;
  if (money1 == money2) {
    print('ok');
  }

  final mone1 = Bank(50, '123');
  final mone2 = Bank(50, '123');
  print(mone1 == mone2); //! Aynı olmalarında rağmen false döner.
  //! Çünkü referanslaı farklıdır. Aynı sınıftan türetilseler de referansları farklıdır.
  //! Bunların eşit olduğu halde false dönmemesi için custom operatorler yazabiliriz.
  //! Aşağıda Bank sınıfı içeirisinde yazalım:

  //? Örneğin banka sinifindan iki kisinin parasini toplayip sonucu yazalim:
  print(mone1 +
      mone2); //* aşağıda Bank sınıfında operatör yazmazsak Burada '+' hata verir.

  //? Örnek olarak parası aynı olanlar aynı kişi olmalıdır sorusunu yaparken:
  print(mone1.id == mone2.id); //! sonucu false döner. Oysa ki paraları eşittir.
  //! Bank sınıfında bir operator daha yazalım.
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

class Bank {
  final int money;
  final String id;

  Bank(
    this.money,
    this.id,
  );

  //? Burada yukarıdaki toplama işlemini yapabilmek için bir operator yazalım.
  //* (Bank sınıfından türetilmiş iki nesneyi toplayabilmek için)
  operator +(Bank newBankOperator) {
    return this.money + newBankOperator.money;
    //! Burada kullanıcının vermiş olduğu money ile yeni üretilen operatordeki money'in
    //! toplama işlemini yaptık.
  }

  //* Burada eşişttir kontrolünü yapmak için id nin üzerinde ctrl + . ile generate equality ile yazabileceğimiz bir operator örneğini kısaca aşağıda yazalım:

  bool operator ==(Object object) {
    return object is Bank && object.id == id;
    //? Yani, Obje sınıfndan object isminde bir nesne türet.
    //? bu nesne Bank sınıfına mı ait kontrol et
    //? Ve eğer bank sınıfına ait ise kullanıcının id si ile eşit mi kontrol et.
    //? Bu şartlar sağlanıyor ise == operatoru true dönecektir.
  }
}
