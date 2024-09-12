// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  final model = CarModel(
    category: CarModels.kia,
    name: 'Sportage',
    money: 100000,
  );

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
}
//* Bir arabalar sınıfı olacak .
//* Arabaların modeli, ismi, fiyatı kesin olacak, şehri zorunlu olmayacak, ikinci ek durumu belirtilmezse
//* ikinci el olarak kabul edilecek

//* 5 Tane araba olacak.

//* Bu arabaların kac tanesi 2. el?

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
}

enum CarModels {
  bmw,
  mercedes,
  audi,
  kia,
  toyota;
}
