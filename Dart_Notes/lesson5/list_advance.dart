// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  //? arabaları tutan carItems listesi:
  final carItems = [
    CarModel(
        category: CarModels.kia,
        name: 'Sportage',
        money: 100000,
        isSecondHand: false),
    CarModel(
      category: CarModels.mercedes,
      name: 'S450 d',
      money: 400000,
    ),
    CarModel(
        category: CarModels.bmw,
        name: '320',
        money: 200000,
        isSecondHand: false),
    CarModel(
      category: CarModels.audi,
      name: 'Q8',
      money: 500000,
    ),
    CarModel(
        category: CarModels.kia,
        name: 'Stonic',
        money: 150000,
        isSecondHand: false),
  ];

  //* Bu arabaların kac tanesi 2. el? Hesaplamak için farklı bir yöntem kullanalım:
  //! any (var mı için kullanılır) - where (kaç tane için kullanılır) - contains
  final resultCount =
      carItems.where((element) => element.isSecondHand == true).length;
  //!Bu kod listedeki isSecondHand == true sayısını döndürür.
  print(resultCount);

  //? *************************************************************************
  //? *************************************************************************
  //? *************************************************************************
  //? *************************************************************************

  //* Yeni bir araba geldi, bizde var mı kontrol edelim.

  //? Yeni bir araba ekleyelim
  final newCar = CarModel(
    category: CarModels.mercedes,
    name: 'S450 d',
    money: 400000,
  );

  final isHaveCar = carItems.contains(newCar);
  //! carItems içinde newCar'ın aynısından var mı?
  //! Fakat doğru sonuç için CarModel sınıfının equality'sini oluşturmamız gerekir.
  //! Bunu bir sınıf propertysi üzerinde ctrl/command + . ile yapabiliriz.

  if (isHaveCar) {
    print('Elimizde var');
  } else {
    print('Elimizde yok.');
  }

  //? *************************************************************************
  //? *************************************************************************
  //? *************************************************************************
  //? *************************************************************************

  //* Markası bmw olan money'i 20 den bürük olan arabaların modelini yazdır:

  final resultBmwMore20 = carItems.where((element) {
    return element.category == CarModels.bmw && element.money > 20;
  }).join();
  //? Join ile tostring'e çevirmiş oluruz.
  //! CarModel sınıfında ise tostring için override işlemini aşağıdaki ginbi yaparak,
  //! model ve fiyatın dönmesini sağlarız:
  //  @override
  // String toString() {
  //   return '$name - $money';
  // }

  print(resultBmwMore20);

  //? *************************************************************************
  //? *************************************************************************
  //? *************************************************************************
  //? *************************************************************************

  //* Sadece isimleri yan yana göstereim.

  //? map yapmak bundan yeni bir obje üretmek anlamına gelir.
  final carNames = carItems.map((e) => e.name).join(' - ');
  //! Burada map ile yeni bir obje oluşturduk ve join ile bunları toString'e çevirerek ekranda araç isimlerini yazdırdık.
  print(carNames);

  //? *************************************************************************
  //? *************************************************************************
  //? *************************************************************************
  //? *************************************************************************

  //* Elimizde mercedes var mı kontrol edelim:
  //? Bunun için where ve singleWhere kullanabiliriz.
  //! Where -> elimizde olanları kontrol eder.
  //! singleWhere -> elimizde olanları kontrol eder fakat 1 tane olması yeterlidir.
  try {
    final mercedesCar = carItems
        .singleWhere((element) => element.category == CarModels.mercedes);
    print('Elimizde Mercedes var. ( Mercedes $mercedesCar )');
  } catch (e) {
    print('Elimizde bu araç yok.');
  }

  //! Şimdi elimizde mercedes araç olmaması durumunda hata alacağız.
  //! Bu tür hatalar için try catch kullanmamız gereklidir.

  //? *************************************************************************
  //? *************************************************************************
  //? *************************************************************************
  //? *************************************************************************
}
//* Bir arabalar sınıfı olacak .
//* Arabaların modeli, ismi, fiyatı kesin olacak, şehri zorunlu olmayacak, ikinci ek durumu belirtilmezse
//* ikinci el olarak kabul edilecek

//* 5 Tane araba olacak.

//* Bu arabaların kac tanesi 2. el?

//* Sadece isimleri yan yana göstereim.

class CarModel {
  final CarModels category;
  final String name;
  final double money;
  String? city;
  bool isSecondHand;
  CarModel({
    required this.category,
    required this.name,
    required this.money,
    this.city,
    this.isSecondHand = true,
  });

  @override
  bool operator ==(covariant CarModel other) {
    if (identical(this, other)) return true;

    return other.category == category &&
        other.name == name &&
        other.money == money &&
        other.city == city &&
        other.isSecondHand == isSecondHand;
  }

  @override
  int get hashCode {
    return category.hashCode ^
        name.hashCode ^
        money.hashCode ^
        city.hashCode ^
        isSecondHand.hashCode;
  }

  @override
  String toString() {
    return '$name - $money';
  }
}

enum CarModels {
  bmw,
  mercedes,
  audi,
  kia,
  toyota;
}
