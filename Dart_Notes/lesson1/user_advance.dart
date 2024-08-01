void main() {
  //eğer bir degiskenin degerinin degistirlmesini istemiyorsak final ve const kullanabilriz.
  final int money = 100; //Bu deger daha sonra degistirilemez.
  const int money2 = 100; //Bu deger daha sonra degistirilemez.

  print(money);
  print(money2);

  //final ve const arasındaki fark: Final runtime'deki son değeri alır. yani o an gelecek bi değeri verebiliriz. yani proje başlayınca bir değer atanabilir. initilaze değerini alabilir.
  // fakat const'da bu işlemi yapamayız, proje başladığı anda aldığı değeri alır.

  //Ornek :
  // Bank name = X Bank
  // user1 = "musteri1"
  // user1 in parasi = 100.00
  // Yeni bir musteri gelecek adi musteri2 bankaya yeni gelenden 1. musterinin parasi cikartilarak gösterilecek.

  final String user1 =
      'Musteri 1'; // musterinin adi degistirilmesin diye final yaptık. const da yapabilirzi.
  int user1Money = 100;

  String user2 = 'Musteri 2';
  int user2Money = 500;

  print('$user1 : $user1Money');
  print('$user2 : ${user2Money - user1Money}');
}
