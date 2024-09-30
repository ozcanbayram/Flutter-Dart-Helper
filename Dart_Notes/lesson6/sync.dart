// Senkron işlemler
void main(List<String> args) {
  Stream<int> bankMoneys = Stream.empty();
  bankMoneys = dataAddBankMoney(15, 3);
  bankMoneys.listen(
    (event) {
      print(event);
    },
  );

  // print( bankMoneys.where((event) => event == 63,).toList()); //* toList burada Future olarak döner
}

Stream<int> dataAddBankMoney(int retryCount, int money) async* {
  int _localRetry = 0;
  await Future.delayed(Duration(seconds: 2));
  while (_localRetry < retryCount) {
    _localRetry++;
    yield 0;
    yield money += 5; // Döndürülen yer (yield)
  }
}

/*
yield ve return arasındaki temel fark, fonksiyonun nasıl sonuç döndürdüğüdür.
return: Fonksiyonu anında sonlandırır ve tek bir değer döndürür. Fonksiyon bir kere çalışır ve tüm işi bittiğinde sonucu döner.
yield: Fonksiyonu duraklatır, geçici olarak bir sonuç döndürür, fakat sonlandırmaz. Fonksiyon çalışmaya devam edebilir ve ileride
başka değerler döndürebilir. Bu, generatör fonksiyonlarda kullanılır ve verileri bir akış (stream) halinde parça parça döndürür.
*/

//* Anlık data akışlarını dinlemek için senkron işlemler yapılabilir. 
