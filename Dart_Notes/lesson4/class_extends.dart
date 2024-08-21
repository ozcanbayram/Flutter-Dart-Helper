void main() {
  User normalUser = User('Sadık', 250);
  final userBank = BankUser('Servet', 200, 123546);
  final userSpecial = SpecialUser('Ferit', 350, 123456, 50);

  normalUser.SayMoneyWithCompanyName();
  userBank.SayMoneyWithCompanyName();
  userSpecial.SayMoneyWithCompanyName();

  print('${userSpecial.name} bey, bonus eklenmiş paranız: ${userSpecial.CalculateMoney}');
}

// 1- tüm müşterilerin paralarını banka ismi ile görebilmesini istiyorum. Bu fonksiyonu tüm sınıflarda
//tek tek yazmak yerine bir abstract class kullanarak extend edebiliriz.

abstract class IUser {
  // bu bir soyut sınıftır. Buradaki özellikleri başka sınıflara extend ederek kullanabiliriz.

  final String name;
  final int money;

  IUser(this.name, this.money);

  void SayMoneyWithCompanyName() {
    print('$name - $money paranız var.');
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

class BankUser extends IUser {
  // final String name;
  // final int money;
  final int bankingCode;

  BankUser(String name, int money, this.bankingCode) : super(name, money);

  void SpecialUserLogic() {
    print(
        money); //burada moneyi kullanacağız fakat super ile zaten money'i IUser sınıfından aldığımız için.
    // this.name, this.money, this.bankingCode satırını  String name, int money, this.bankingCode olarak
    // degistirebilir ve bu sınıf içerisindeli final String name ve final int money tanımlamalarını silebiliriz.
    // Boylelikle her yerde name ve money tanımlamak yerine abstract classta tanımlayarak gruplamış oluruz.
  }
}

class SpecialUser extends IUser {
  final String name;
  final int money;
  final int bankingCode;
  late final int _disccount;
  //sadece buradan erişilmesi için: _ kullanarak private yaptık.

  SpecialUser(this.name, this.money, this.bankingCode, int disccount)
      : super(name, money) {
    _disccount = disccount;
    //Bu işlem ile private olan _disccount'u disccounta eşitleyerek kullanılabilir hale getirdik.
  }

  //indirimli fiyat hesaplama:

  // int CalculateMoney() {
  //   return money - (money ~/ disccount);
  // }

  //Get ile aynı işlemi yapalım:

  int get CalculateMoney => money + (money ~/ _disccount);
}
