// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  final user = User(money: 5);

  user.calculateMoney((int result) {
    // burada onComplate'in uygulanacağu değer olarak result ismini veriyoruz.
    print(result);
    return result;
  });
}

class User {
  int money;
  User({
    required this.money,
  });

  void calculateMoney(int Function(int data) onComplete) {
    // Burada call back yani geriye haber veren metod yazdık.
    money += 5;
    onComplete(money); // return yterine onComplate ile haber verebiliriz.
  }
}
