class PostModel {
  String? title;
  String? body;
  int? userId;
  int? id;

  PostModel({this.title, this.body, this.userId, this.id});

  PostModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    body = json['body'];
    userId = json['userId'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['body'] = body;
    data['userId'] = userId;
    data['id'] = id;
    return data;
  }
}

//! Bu Model sınıfına extradan kod yazılmaz. Bu sayfanın tek işi servisten data almak ve servise data vermektir.
//! Fonksiyonlar oluşturularak yeni görevler verlebilri.
   
//! fromJson -> jsondan data map olarak gelir ve bizim bunu cast etmemiz gerekir. Yani gelen datayı bir modele çevirmemiz gerekir.

//! toJson -> servise data yollamak için body içeriklerini doldurmak gibi işlemleri burada yaparız.
