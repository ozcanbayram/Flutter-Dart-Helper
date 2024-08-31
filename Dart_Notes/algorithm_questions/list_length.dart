//! Bir listenin uzunlugu kadar donen dongü.

void main(List<String> args) {
  List<String> userList = ['Ali', 'Veli', 'Ahmet', 'Mehmet'];

  for (var item in userList) {
    print(item);
    //! Burada döngüdeki isimler döner.
  }

  for (int i = 0; i < userList.length; i++) {
    print(i);
    //! Burada döngüdeki elemanların indexleri döner.
  }

  //? Bir datadan ya da başka bir yerden veri geldiği zaman kullanabiliriz.
}
