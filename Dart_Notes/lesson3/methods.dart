void main(List<String> args) {
  int user1Money = 0;

  //Kullanıcının parasının olup olmadığını tek tek kontrol etmek yerine controllUserMoney adında bir metot
  // yazarak daha az kod ile daha temiz bir şekilde aynı işlemi yapabiliriz.
  controllUserMoney(user1Money);

  //musterinin parasini dolara çeviren bir metot yazalim:
  int customerMoney = 26000;
  int newCustomerMoney = convertToDolar(customerMoney);
  print(newCustomerMoney);

  int customer2Money = 36000;
  // --> Burada opsionel olarak euro fiyatı belirlenebilir: Eğer belirlenmez ise metottaki default değeri alır.
  int newCustomer2Money = convertToEuro(customer2Money);
  print(newCustomer2Money);
}

void controllUserMoney(int money) {
  if (money > 0) {
    print('Parasi var');
  } else {
    print('Parasi yok');
  }
}

//musterinin parasini dolara çeviren bir metot yazalim:
int convertToDolar(int money) {
  return money ~/ 33;
}

//Asağidaki metot yine euro çevirme işllemini yapar fakat, opsiyonel olarak euro belirlenebilir.
//Eğer belirlenmez ise atanan default değer verilir.
int convertToEuro(int money, {int euro = 34}) {
  return money ~/ euro;
}
