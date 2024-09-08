void main(List<String> args) {
  //! Singleton: Bİr tane özellik, instance ya da herhangi bir şey. Eğer uygulamanın bir çok yerinde
  //! ve sürekli aynı şey kullanılacak ise, singleton dediğimiz yapıyı kullanırız.

  //? Buna bir örnek yapmak için aşağıda Product sınıfı oluşturalım.

  print(Product.money);
  //* Burada direkt olarak Product sınıfındaki nesneye eriştik.
  //* Yani bu nesneye erişebilmek için öncesinde bir obje oluşturmamıza gerek kalmadı.
  //* Örneğin final userMoney = Product ... şeklinde yeni bit nesne oluşturmadan eriştik.
}

//? Mesela bir fonksiyonda bu Product sınıfındaki money'e erişmek için aşağıdaki gibi yapabiliriz:
void calculateMoney() {
  if (Product.money > 5) {
    print('5 tl daha eklendi');
    Product.money += 5;
    print(Product.money); //! Burada incrementMoney metodunu kullanamayız.
    //! çünkü, bu değer bir static değerdir ve biz onu bozmayana kadar proje boyunca aynı şekilde ayakta kalır.
  }

  //! Eğer Product sınıfında bir metot yazarsak bu metodu başka yerde kullanamayız.
  //! çünkü, bu değer bir static değerdir ve biz onu bozmayana kadar proje boyunca aynı şekilde ayakta kalır.

  //* Eğer aşağıdaki metodu static olarak yazarsak incrementMoney metodunu kullanabiliriz.
  else {
    Product.incrementMoney(10);
  }
}

class Product {
  static int money = 10;

  static void incrementMoney(int newMoney) {
    money += newMoney;
  }
  //Bu sınıfı bambaşka sayfalarda da kullanabiliriz.
  //! fakat her yerden eişilebildiği için biraz tehlikeli bir kullanımdır.
  //! Değeri değiştikten sonra null kontrolleri aksamalarında hata ile karşılaşılabilir.
  //! daha büyük projelerde kullanımı riskli olabilir ve hatalara yol açabilir.
  //? Peki bu durumu engellemek için ne yapabiliriz?
  //* Statik tanımlamamızı örneğin static const companyName = 'MY COMPANY';
  //* şeklinde yaparsak değer daha sonradan değiştirilemez ve her zaman statik kalarak 
  //* beklenmeyen hataların önüne geçer. 
}
