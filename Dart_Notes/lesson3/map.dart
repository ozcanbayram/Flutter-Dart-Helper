void main(List<String> args) {
  // Maplar key - Value mantığında çalışır.
  Map<String, int> users = {
    'Mehmet': 20,
    'Ahmet': 32,
    'Serkan': 18,
    'Beyza': 25
  };

  print(users.keys);
  print(users.values);

  print('-------------------------');

  // mapi anahtar değer seklinde gostermek icin:
  for (var item in users.keys) {
    print('${item} - ${users[item]}');
  }

  print('-------------------------');

  for (var i = 0; i < users.length; i++) {
    print('${users.keys.elementAt(i)} - ${users.values.elementAt(i)}');
  }

  print('--------------');

  //Örnek:
  //Ben bankayim ve musterilerimin birden fazla hesabi olabilir.
  //Alinin 3 hesabi var 100,300,200
  //Velinin 2 hesabi var 30,50
  //Ozcanin 1 hesabi var 30

  //Hesaplari kontrol et, bir hesapta 150 tlden fazla varsa krediniz hazır de.

  Map<String, List<int>> bankCustomers = {
    'Ali': [100, 300, 200],
    'Veli': [30, 50],
    'Ozcan': [30]
  };

  for (var items in bankCustomers.keys) {
    //bankanin elemanlari
    //print('${items} - ${bankCustomers[items]}');

    for (var money in bankCustomers[items]!) {
      //userin elemanlari

      if (money > 150) {
        print('kredin hazir');
        //return; //Mesaj sadece 1 kere gönderilir. Direkt programı sonlandırır.
        break; //Sadece bu skopu sonladırır.
      }
    }
  }

  print('--------------');

  //Musterilerin hesaplarındaki toplam parrayı bulalım:

  for (var name in bankCustomers.keys) {
    int result = 0;

    for (var money in bankCustomers[name]!) {
      result += money;
    }
    print('$name senin paran --> $result');
  }
}
