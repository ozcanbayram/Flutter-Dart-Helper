class User {
  //Sınfın özellikleri:
  //ad olmak zorunda
  //para olmak zorunda
  //yasini vermeyebilir
  //sehrini vermeyebilir
// burada id olsun ve sadece bu sınıftan erişilebilsin.

  late final String name;
  //* -> late : bu değer sonradan verilecek anlamına gelir. Consturctor anında değer gelecek.
  //* late final olan bir şeyi constructor anında çağırmalıyız.
  late int money;
  late final int? age;
  late final String? city;
  //* -> String? ile nullable tanımlarız verinin gelmesi zorunlu olmaz.
  //Yukarıdaki özelliklerin, constructorunu oluşturmalıyız.

  //! bir userCode oluşturalım ve bu kullanıcının adı ve şehrinden oluşsun. Eğer yaşı null ise 00 olarak belirlensin.
  late final userCode;

  //id:
  late final String _id;

  User(String nameC, int money, {required String id, int? age, String? city}) {
    //! Bir özellik gelmeyebilirse ve bnunu opsiyonal yapacaksak {} kullanırız.
    this.name = nameC;
    this.money = money;
    this.age = age;
    this.city = city;
    _id = id; // _id (private) = id (public)
    userCode = (city ?? 'ist') + name;
  }

  bool isSpecialUser(String id) {
    return _id == id;
    //Burada eğer _id ile id aynıysa true değilse false dönecek.
  }

  // ---***---***---***---***---***---

  //id nin boş oluğ olmadığını kontrol eden fonksiyon:
  // bool isEmptyId() {
  //   return _id.isEmpty;
  // }

  //Bu fonksiyon ile aynı işleve sahip olan daha kısa yazılmış hali:
  bool get isEmptyId => _id.isEmpty;
  //Burası bir parametre ya da değer almıyor ise get kullanabiliriz.
  // get; compitued value anlamında gelir değer çağrıldığında her defasında hesaplanır ve sonucu döndürür.
}
