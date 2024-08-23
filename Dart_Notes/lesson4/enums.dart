void main(List<String> args) {
  final customerMouse = Mouses.Apple;
  //Burada baist bir şekilde kullanıcının mouse değerini enum da belirlediğimiz apple olarak ayarladık.

  //Switch-Case kontrollerinde enum bizlere kolaylık sağlar.
  // switch(customerMouses) {} yazarak, ardından customerMouses'a ctrl + . ya da command + . ile
  //enumun içindeki öğelerin her biri için koşul ekleme işlemini çok daha rahat bir şekilde yapabilirsiniz.

  switch (customerMouse) {
    //Aşağıdaki tüm senaryoalrı bize otomotik olarak döndürür.
    case Mouses.Apple: //Apple ise ne yapacağını belirleyebilriz.
    // TODO: Handle this case.
    case Mouses.Logitech: //Logitech ise ne yapacağını belirleyebilriz.
    // TODO: Handle this case.
    case Mouses.Everest: //Everest ise ne yapacağını belirleyebilriz.
    // TODO: Handle this case.
    case Mouses.Samsung: //Samsung ise ne yapacağını belirleyebilriz.
    // TODO: Handle this case.
  }

  //enum içerisindeki bir şeyin isim ve indexini alabiliriz:
  // final customerMouse = Mouses.Apple; --> şekilnde tanımladığımız şeyin indexini ve ismini aşağıdaki gibi kolayuca yazdırabilirsiniz:
  print(customerMouse.index);
  // Kaçıncı indexteki değerin seçildiğini verir --> 0 (Bu enum için)
  print(customerMouse.name);
  // Seçilen değerin ismini name özelliği ile verir --> Apple (Bu enum için)
}

enum Mouses {
  // Burada enum'u ve içerisindeki elemanları tanımlarız. Dilediğimiz yerde
  //Mouses.Apple şeklinde kullanabiliriz.
  Apple,
  Logitech,
  Everest,
  Samsung,
}
