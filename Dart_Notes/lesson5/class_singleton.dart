// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'model/product_config_model.dart';

void main(List<String> args) {
  //! Singleton: Bİr tane özellik, instance ya da herhangi bir şey. Eğer uygulamanın bir çok yerinde
  //! ve sürekli aynı şey kullanılacak ise, singleton dediğimiz yapıyı kullanırız.

  //? Buna bir örnek yapmak için aşağıda Product sınıfı oluşturalım.

  print(Product.money);
  //* Burada direkt olarak Product sınıfındaki nesneye eriştik.
  //* Yani bu nesneye erişebilmek için öncesinde bir obje oluşturmamıza gerek kalmadı.
  //* Örneğin final userMoney = Product ... şeklinde yeni bit nesne oluşturmadan eriştik.

  //? Factory Construcor:

  //* Örneğin User sınıfını kullanarak product yapalım:
  final user1 = User('Vedat', 'bcdef');
  // final newProduct = Product(user1.product);
  //! Factory Constructordan sonra aşağıdaki gibi yazabiliriz:
  final newProduct1 = Product.fromUser(user1);
  print(newProduct1);

  //!aşağıdaki
  //! "
  //  //? Factory Constructor start
  //?Product(this.name) {}
  //?Product.ali([this.name = 'Ali']); //* Burada default parametre atadık.
  //? Factory Constructor finish
  //!"  Kısmında yaptığımız işlemi kullanalım.
  Product
      .ali(); //* Product.ali şeklinde Product sınıfında yazdığımız Factory Constructor'u kullanarak bir ürün oluşturabiliriz.

  //? apiKey neydi?:
  ProductConfig.instance.apiKey; //? sadece bunu yapanlar görebilir.
  print(ProductConfig.instance.apiKey);
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
  String name;

  //? Factory Constructor start
  Product(this.name) {}
  Product.ali([this.name = 'Ali']); //* Burada default parametre atadık.

  //! Bir constructor geriye değer döndürmez. Fakat dönmesini istiyorsak Factory Constructor kullanabiliriz.
  //* Örneğin:
  factory Product.fromUser(User user) {
    return Product(user.name);
  }

  //? Dart'ta nesne oluşturmanın esnek bir yoludur.
  //? Normal constructorlar her çağrıldıklarında yeni bir
  //? nesne örneği oluştururken, factory constructorlar isteğe
  //? bağlı olarak yeni bir nesne oluşturabilir veya önceden oluşturulmuş
  //? bir nesneyi döndürebilir.

  //* Factory constructorlar `new` anahtar kelimesi ile çağrılmaz.
  //* Factory constructorların dönüş tipi, sınıfın kendisidir veya alt sınıflarından biri olabilir.
  //* Factory constructorlar, normal constructorlardan farklı olarak `this` anahtar kelimesini kullanamazlar.

  //? Factory Constructor finish

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

//* Factory Constructor

class User {
  final String name;
  final String product;

  User(this.name, this.product);
}
