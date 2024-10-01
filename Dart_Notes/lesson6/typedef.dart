//! call_back.dart örneğinin daha kolay ve kullanışlı yazılabilmesi için typedef kullanırız:

void main(List<String> args) {
  final user = User(money: 5);

  user.calculateMoney((int result) {
    // burada onComplate'in uygulanacağu değer olarak result ismini veriyoruz.
    print(result);
    return result;
  });
}

//! typedef'i burada kullanarak call back metodumuza ekleyelim:
typedef CalculateCallBack = int Function(int data);

//* daha sonra CalculateCallBack memtodunu call back metodumuzdaki parametre yerine yazmamız yeterlidir.

class User {
  int money;
  User({
    required this.money,
  });

  void calculateMoney(CalculateCallBack onComplete) {
    // Burada call back yani geriye haber veren metod yazdık.
    money += 5;
    onComplete(money); // return yterine onComplate ile haber verebiliriz.
  }
}
