//extension ile hazır olan sınıflara ya da kendi yazdığımız sınıflara extra özellikler ekleyebiliriz.
//mesela String sınıfı dart tarafından bize hazır olarak verilmiş bir sınıftır ve içerisinde bir çok özellik
//barındırır. Biz String sınıfına başka bir özellik daha eklemek istersek Extension kullanırız.
//Öernek:
//Aşağıdaki mainde bir string için admin olup olmama durumunu kontrol eden özelliği String sınıfına ekleyelim.

void main(List<String> args) {
  final String user = 'admin';

  //Aşağıda bir strignin admin olup olmadığını kontrol edelim
  if (user.isAdmin()) {
    print('Admin');
  } else {
    print('Admin degil');
  }
}

extension StringAdminControlExtension on String {
  //yukarıdaki satırda, StringAdminControlExtension'a yazılacak olan özelliklerin String sınıfına extend
  //edileceğini belirtttik. Ve burada yazacağımız özellikler ve metotlar String sınıfı için de geçerli olacaktır.
  //Böylece bir string için admin olup olmama durumunu kontrol edebileceğiz.

  bool isAdmin() {
    return this.toLowerCase() == 'admin'.toLowerCase();
  }

  //Bu fonksiyon true-false döner.
  //toLoweCase ile metinleri küçük harfe çevirir.
  //this ile bu sınıftaki ögeyi belirtir.
  //== 'admin' ile, this ile belirtmiş olduğu bu sınıftaki ögeyi, kullanıldığı sınıfta olacak olan ögeye eşitler.
  //Yani burada string sınıfından öretilen ögeyi, bizler tarafından verilecek olan ögeye eşitler.
  //Bir kontrol sağlar, eğer admin stringine eşit ise true döner ve bu stringin admin kontrolü yapılmış olur.
}
