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
}

// class User {
//   //Sınfın özellikleri:
//   String name;
//   int money;
//   int age;
//   String city;
// }
