void main(List<String> args) {
  String? userName = 'a';

  if (userName.length > 2) {
    print('2 den büyük');
  } else
    throw UserNameException(); // throw ile direkt olarak istenen metodu çalıştırabilriz.
}

class UserNameException implements Exception {
  @override
  String toString() {
    return 'User name\'i null girmişsin bunu düzelt !';
  }
}

//! BU yöntemle kendi custom exceptionlarımızı yazarak alabileceğimiz hataları daha iyi çözebiliriz.
