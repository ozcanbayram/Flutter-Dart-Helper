// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'model/user_model.dart';
import 'model/user_model_2.dart';

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
  User user1 = User('Özcan', 1500, id: '123456789', city: 'Turkey');
  User user2 = User('Ali', 2000, id: '123', city: 'Turkey');
  //model/user_model.dart sınıfından geliyor.
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

  print(user2.userCode);

  // print(user1.id);  --> Buradaki id model sınıfı içerisinde private olarak tanımlandığı için kullanılamaz. (Encapsulation)

  //Musteri id si 123 olana indirim yapılsın:
  //Burada id ler private olduğu için bir fonksiyon kullanılarak bu işlem yapılmalıdır.
  //Yazdığımız isSpecialUser fonksitonunu kullanalım:
  if (user2.isSpecialUser('123')) {
    user2.money += 100;
    print('Para eklendi ${user2.money}');
  }
  // user2.isEmptyId;

  User2 user3 = User2('Vedat', 2100, 32, 'Adana');
  user3.money += 20; //Final olduğundan dolayı direkt değiştiremeyiz.
  print(user3.money);
}
