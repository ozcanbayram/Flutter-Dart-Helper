void main() {
  User normalUser = User('Ali', 250);

  normalUser.SayMoneyWithCompanyName();
}

// 1- tüm müşterilerin paralarını banka ismi ile görebilmesini istiyorum. Bu fonksiyonu tüm sınıflarda
//tek tek yazmak yerine bir abstract class kullanarak extend edebiliriz.

abstract class IUser {
  // bu bir soyut sınıftır. Buradaki özellikleri başka sınıflara extend ederek kullanabiliriz.

  final String name;
  final int money;

  IUser(this.name, this.money);

  void SayMoneyWithCompanyName() {
    print('Ahmet- $money paranız var.');
    //Burada diğer sınıflardaki money bilgisine erişmek için. Bu sınf için bir özellik ve constructor
    //oluşturmamız gerekir.
    //Fakat, diğer sınıftaki bomey ve name bilgisini kullanabilmek için, : super ile o sınıftan gönderilmeilidir.
  }
}

class User extends IUser {
  //Burada soyut sınıfın özelliklerini kullanabilmek için extend ettik.
  final String name;
  final int money;

  User(this.name, this.money)
      : super(name,
            money); //Buradaki name ve money bilgilerini super ile gönderelim.
}

class BankUser {
  final String name;
  final int money;
  final int bankingCode;

  BankUser(this.name, this.money, this.bankingCode);
}

class SpecialUser {
  final String name;
  final int money;
  final int bankingCode;
  final int disccount;

  SpecialUser(this.name, this.money, this.bankingCode, this.disccount);
}
