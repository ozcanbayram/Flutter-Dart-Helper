void main() {
  // Bazı if else örnekleri:
  // Temel olarak if else kontroller için kullanılabilir.
  //İçerisinde veriler ile ilgili bir çok şeyi kontrol ederek durumlara göre işlemleri yönetebiliriz.
  final int money = 100;

  if (money < 100) {
    print('Paran 100 den az.');
  } else if (money == 100) {
    print('paran 100\'e eşit');
  } else {
    print('paran 100\'den fazla.');
  }

  //Örnek: musteri bankaya gelir, bir sorgu yapar, sorgu sonucu 20 tlsi alinir, eğer müşterinin parası 0 dan küçükse müşteri kovulur.
  final int musteriParasi = 15;

  final int sorgusonucu = musteriParasi - 20;
  if (sorgusonucu < 0) {
    print('Git buradan');
  } else {
    print('Paran var, burada kalabilrsin');
  }

  // Ornek, Bazi örnek isimler olsun, isimlerden 4 ve daha fazla harfli olanları ekranda yan yana yazdır:

  final String name1 = 'Ali';
  final String name2 = 'Veli';
  final String name3 = 'Mehmet';
  final String name4 = 'Ahmet';
  final String name5 = 'Ramo';
  final String name6 = 'X';

  final int controlNumber = 4;
  String result = '';

  if (name1.length >= controlNumber) {
    result += name1;
  }
  if (name2.length >= controlNumber) {
    result += name2;
  }
  if (name3.length >= controlNumber) {
    result += name3;
  }
  if (name4.length >= controlNumber) {
    result += name4;
  }
  if (name5.length >= controlNumber) {
    result += name5;
  }
  if (name6.length >= controlNumber) {
    result += name6;
  }

  if (result.length == 0) {
    print('4 Harften daha fazla harfli bir isim yok');
  } else {
    print(result);
  }
}
