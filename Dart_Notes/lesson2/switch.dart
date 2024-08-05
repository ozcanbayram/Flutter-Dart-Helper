void main() {
  //Örnek bir switch case yapısı:
  final int degree = 3;
  // Eger deger 0 ise çok kotu, 1 ise kotu, 2 ise nahoş, 3 ise ideal, 4 ise iyi, 5 ise cok iyi yazsın: dier durumlarda belirsiz yazsın.
  switch (degree) {
    case 0:
      print('Çok Kötü');
    case 1:
      print('Kotu');
    case 2:
      print('nahoş');
    case 3:
      print('ideal');
    case 4:
      print('iyi');
    case 5:
      print('çok iyi');
    default:
      print('Belirsiz.');
  }

  //Switch ile kontrol edilecek değeri belirleriz, case ile kontrol edilecek ihtimaller için durumlar belirleriz.
  //  Default ile, caselerin hiçbiri sağlanmazsa ne olması gerektiğini belirleriz.
}
