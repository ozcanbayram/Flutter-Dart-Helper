class User2 {
  final String name;
  int money;
  final int? age;
  final String? city;

  late final userCode;

  User2(this.name, this.money, this.age, this.city, this.userCode) {
    //constructor
    userCode = (city ?? 'ist') + name;
  }
}
