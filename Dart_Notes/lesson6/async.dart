void main(List<String> args) async {
  //! --> burdaki async await'den geldi. async asenkron anlamına gelir
  // Senkron ve asenkron işlemler için Future kullanırız.

  print('veri');
  // 2 sn bekledikten sonra sonraki çıktının görünmesini istiyorsak.

  await Future.delayed(Duration(seconds: 1));
  print('bir sonraki veri');

  //! ----------------------------
  //! ----------------------------
  //! ----------------------------
  //! ----------------------------
  //! ----------------------------
  //! ----------------------------

  //* Asagidaki metot ile her 2 sanitede bir elemanı yazdırabiliriz.
  //* Asenkron çalışarak işlemleri yapmasan önce yapılması gereken işlemleri tamamlar.
  //* Örneğin 2 saniye beklemek gibi.

  // Future.forEach([1, 2, 3, 4, 5, 6], (int item) async {
  //   await Future.delayed(Duration(seconds: 2));
  //   print('İşlem bitti $item');
  // });

  //! ----------------------------
  //! ----------------------------
  //! ----------------------------
  //! ----------------------------
  //! ----------------------------
  //! ----------------------------


  //* Asagidaki kodlarda hello 1 , 2 , 3, 4 sırasıyla yazmasını beklerken
  //* hello 1, 3 ,2, 4 yazar
  //* çünkü öncelikle main thread içi çalışır sonra Future thread'lar çalışır. Hello 1  ve Hello 3 main 
  //* içinde olduklarından dolayı çmce önlar yazıldı.

  print('Hello 1');
  Future.delayed(Duration(seconds: 2)).whenComplete(() {
    print('Hello 2');
  });
  print('Hello 3');
  Future.delayed(Duration(seconds: 2)).whenComplete(() {
    print('Hello 4');
  });
}

// async
// servisten cevap sonra gelecek
// matematik zaman alacak vb...

// sync: çalışan akış bittikten sonra sonraki çalışır. aynı anda çalışır.

// Senkron ve asenkron işlemler için Future kullanırız.
