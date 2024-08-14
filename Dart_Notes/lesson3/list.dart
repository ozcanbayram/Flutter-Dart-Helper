void main() {
  //Bir bankaya 10 musteri gelir 100, 110, 50 .. .tlsi vardır

  List<int> moneys = [100, 200, 300, 500, 400];
  final List<int> newMoney = [
    10,
    20,
    30,
    40,
    50
  ]; //final olduğu için değiştirilemez ama referans ile değer eklemek gibi özellikler yapılabilir.

  print('1. Müşterinin parası: ${moneys[0]}');

  //parasi buyuk-kucuk olana gore:
  moneys.sort();
  //listeye ekleme yapma:
  moneys.add(600);

  moneys.insert(0, 50); //0. indexe ekler.

  print(moneys);

  newMoney.add(90); //referans ile final olan listenin içierisne erişebiliyoruz.
  newMoney.clear();

  newMoney.reversed
      .toList(); // Listeyi tersine çevirir ve toList ile yeni bir liste oluşturur.

  //Örnek:
  //musteri listesi yap ve her musterinin numarasına göre sirayla 5 tl ekle.

  List<double> customerMoney = List.generate(100, (index) {
    //generate ile lenght ve her indexe yapılacak işlemi belirtleriz.
    return index + 5;
  });
  print(customerMoney);

  print('-----------------------');
  // Örnek:
  // customers: 20,100,30,40,60
  // 35 tlden buyuk olanlara kredi verebiliriz yazsın.
  // kucuk olanlara baybay yazsın.

  List<int> moneyCustomerNews = [100, 30, 20, 40, 60];
  moneyCustomerNews.sort();
  for (int i = 0; i < moneyCustomerNews.length; i++) {
    if (moneyCustomerNews[i] < 35) {
      print('${moneyCustomerNews[i]}, paranız var, size kredi veremeyiz');
    } else {
      print(
          'oooo! ${moneyCustomerNews[i]}, paranız var size kredi verelim hemen');
    }
  }

  // listenin içerisinde bir verinin varlığını kontrol etmek için .contains('x') metodu kullanılabilir.

  print('----------------------');
  //Aşağıdaki liste dynamic yapıdadır yani birden fazla türdeki veriyi tutabilir. 
  List<dynamic> users = [1, 'ali', false];
  for (var item in users) {
    print(item);
  }
}
