// ignore_for_file: public_member_api_docs, sort_constructors_first
//* generic, türleri belirlerken ya da türlerin tipini öğrenirken yardımcı olur.
//* Mesela trünü belirtmeden kullanırız ve generic ile türünü görürürz. Örneğin:

void main(List<String> args) {
  final user = User(data: 32);
  user.data;

  final adminUser = AdminUser();
  adminUser.removeUser(); //* Burada removeUser'i kullanabiliriz.
  // -> Burada 32 verince değeri int oldu fakat string ya da herhangi bir değer de verebilirdik
}

class User<T> {
  // burada T tipini vermemiz gerekir
  T data; // -> T tipinde data değişkeni
  User({
    required this.data,
  });
}

//! -------
//! Bir admin sınıfı olsun ve bu sınıfa özel remove özelliği olsun.
//! Daha sonra bu sınıfı extend eden başka bir sınıf oluşturalım. ve bu sınıftan türeyen nesneler de remove
//! özelliğine sahip olsun.

void renoveUserAll<T extends IAdmin>(T data) {
  data.removeUser();
}

abstract class IAdmin {
  void removeUser();
}

class AdminUser extends IAdmin {
  @override
  void removeUser() {}
}
