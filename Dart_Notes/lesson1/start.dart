void main() {
  print('Started Dart Notes.');

  // Veri tiplerimiz vardır örneğin String (Metinsel veri tipi), int (Sayısal veri tipi), double (Ondalıklı sayılar için veri tipi) vb...
  // Bu veri tiplerini kullandığımız basit örnekler:
  String hello = "Hello 50";
  print(hello);
  print(hello);
  print(hello);
  print(hello);

  // Yukarıdaki tüm metinleri tek bir değişken üzerinden kontrol edilebilir şekilde yazdık.
  // Yani hello veri adıyla tutulan değeri değiştirmek, tüm print değerlerini değiştirmek için yeterlidir.

  int money = 1500;
  print(money);
  print(hello + money.toString());
  // bu kodda bir string ile bir int veri tipi toplanmaya çalışılmış. Fakat Bunlar aynı veri tipinde olmadığı için
  // eğer money için .toString() dönüştürücüsü kullanılmaz ise hata alırız. toString, başka bir veri türünü String veri türünde dönüştürmeye yarar.
  // Ya da aşağıdak i gibi de yazabiliriz.
}
