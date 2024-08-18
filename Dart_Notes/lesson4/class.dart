// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  //Null yapısı: eğer bir değişken oluşturur ve değer atamazsak bu degiskenin default degeri null olur ve
  //dart burada hata veriri.

  int? para;
  print(para);
  //Burada para degiskenine eğer bir deger atanmamişsa null döner ve hata verir.
  //Bunu engellemek için int para degiskenini tanımlarken int? para; seklinde tanımlamalıyız.
  //Böylece para degisleninin null olabileceğini belirtiriz.

  //null kontrolünü if else ile yapabiliriz:
  // ignore: unnecessary_null_comparison
  if (para != null) {
    para = para + 10;
    print('para null değil 10 eklendi');
  } else {
    print('para null bir deger');
  }
  print('-----' * 20);

  //Şimdi User sınıfından bir nesne oluşturarak bu sınıfı kullanalım:
  User user1 = User('Özcan', 1500, city: 'Turkey');
  //-> age bilgisi verilmemiş olsun
  if (user1.age == null) {
    print('Kullanıcı yaşını belirtmemiş'); //? Burada null kontrolü yapıyoruz.
  } else {
    if (user1.age! >= 18) {
      //-> ! ile, null gelmeyeceğinden emin olduğumuzu belirtiriz.
      print('Kullanıcı 18 yaşından büyüktür');
    } else {
      print('Kullanıcı 18 yaşından küçük!');
    }
  }

  print(user1.userCode);
}

class User {
  //Sınfın özellikleri:
  //ad olmak zorunda
  //para olmak zorunda
  //yasini vermeyebilir
  //sehrini vermeyebilir
  late final String name;
  //* -> late : bu değer sonradan verilecek anlamına gelir. Consturctor anında değer gelecek.
  //* late final olan bir şeyi constructor anında çağırmalıyız.
  late final int money;
  late final int? age;
  late final String? city;
  //* -> String? ile nullable tanımlarız verinin gelmesi zorunlu olmaz.
  //Yukarıdaki özelliklerin, constructorunu oluşturmalıyız.

  //! bir userCode oluşturalım ve bu kullanıcının adı ve şehrinden oluşsun. Eğer yaşı null ise 00 olarak belirlensin.
  late final userCode;

  User(String nameC, int money, {int? age, String? city}) {
    //! Bir özellik gelmeyebilirse ve bnunu opsiyonal yapacaksak {} kullanırız.
    this.name = nameC;
    this.money = money;
    this.age = age;
    this.city = city;
    userCode = (city ?? 'ist') + name;
  }
}
