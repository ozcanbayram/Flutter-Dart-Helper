//Burada modelleme yöntemlerini inceleyelim

class PostModel1 {
  // 1 - Nullabel model. Veriler null gelebilir.
  int? userId;
  int? id;
  String? title;
  String? body;
}

class PostModel2 {
  // 2 - Veriler uygulama oluştuğunda gelecek (Constructor)
  int userId;
  int id;
  String title;
  String body;
  PostModel2(this.userId, this.id, this.title, this.body);
}

class PostModel3 {
  // 3 - Sadece constructor anında gelebilir. (Başında final ekleriz)
  final int userId;
  final int id;
  final String title;
  final String body;
  PostModel3(this.userId, this.id, this.title, this.body);
}

class PostModel4 {
  // 4 - PostModel3 gibi fakat {} içerisinde yazıalrak ve required ile named parametre alır.
  final int userId;
  final int id;
  final String title;
  final String body;
  PostModel4(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body});
}

class PostModel5 {
  // 5 - Verileri alıp hemen müşteriye vermeyiz. Private olarak alırız. Değerleri String olarak alırız. Required ile vermek zorunda olduğunu belirtiriz.
  final int _userId;
  // ignore: unused_field
  final int _id;
  // ignore: unused_field
  final String _title;
  // ignore: unused_field
  final String _body;
  // Buradaki veriler private oldukları için kuıllanılırken değişkenleri görmek için erişilemez. Erişilmesini istediklerimiz için Encapsulation yapavbilriz:
  int get userId => _userId;
  PostModel5({
    required int userId,
    required int id,
    required String title,
    required String body,
  })  : _userId = userId,
        _id = id,
        _title = title,
        _body = body;
  //Burada gelen verileri, karşıdan gelen verilerle eşitleriz. bunun 2 yolu vardır. (1.YOL)
}

class PostModel6 {
  // 6 - Verileri alıp hemen müşteriye vermeyiz. Private olarak alırız. Değerleri String olarak alırız. Required ile vermek zorunda olduğunu belirtiriz.
  // ignore: unused_field
  late final int _userId;
  // ignore: unused_field
  late final int _id;
  // ignore: unused_field
  late final String _title;
  // ignore: unused_field
  late final String _body;
  PostModel6({
    required int userId,
    required int id,
    required String title,
    required String body,
  }) {
    //Burada gelen verileri, karşıdan gelen verilerle eşitleriz. bunun 2 yolu vardır. (2.YOL) burada late kavramını kullanırız değerin daha sonra geleceğini belirtir.
    //Sadece Consturctor anında sonradan gelebilir.
    int _userId = userId;
    int _id = id;
    String _title = title;
    String _body = body;
  }
}

class PostModel7 {
  // 7 - Required vermeden bir default değer belirleyebiliriz.
  // ignore: unused_field
  late final int _userId;
  // ignore: unused_field
  late final int _id;
  // ignore: unused_field
  late final String _title;
  // ignore: unused_field
  late final String _body;
  PostModel7({
    int userId = 0,
    int id = 0,
    String title = '',
    String body = '',
  }) {
    //Burada gelen verileri, karşıdan gelen verilerle eşitleriz. bunun 2 yolu vardır. (2.YOL) burada late kavramını kullanırız değerin daha sonra geleceğini belirtir.
    //Sadece Consturctor anında sonradan gelebilir.
    int _userId = userId;
    int _id = id;
    String _title = title;
    String _body = body;
  }
}

class PostModel8 {
  // 8 - Eğer veriler internetten gelecekse null olma ihtimali vardır.
  final int? userId;
  final int? id;
  final String? title;
  String? body;

  PostModel8({this.userId, this.id, this.title, this.body});

  //body değerini değişriemek için nullable kontroü yapalım:
  void updateBody(String? data) {
    if (data != null && data != data.isNotEmpty) {
      body = data;
    }
  }

  //Bir kopyasını olulturup değişkenlerden değişenleri ekleyen modeli yazalım.
  PostModel8 copyWith({int? userId, int? id, String? title, String? body}) {
    return PostModel8(
        userId: userId ?? this.userId,
        id: id ?? this.id,
        title: title ?? this.title,
        body: body ?? this.body);
    //Bu copyWith işlemini, kullandığımız sayfada veri değiştirirken kullanırız.
  }
}
