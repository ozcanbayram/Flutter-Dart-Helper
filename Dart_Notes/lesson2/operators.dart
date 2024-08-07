void main() {
  int money = 5;

  money = money + 1;

  money += 1;
  money++;
  money--;

  String name = "Ozcan";
  String surname = "Bayram";

  print(name + surname);

  // Bazı operatorler:

  if (name == 'Ozcan') {}
  if (name != 'Ozcan') {}
  if (name.length > 'Ozcan'.length) {}
  if (name.length < 'Ozcan'.length) {}
  if (name.length <= 'Ozcan'.length) {}
  if (name.length >= 'Ozcan'.length) {}

  const int appleMoney = 20;
  const double disccount = 2.5;

  int myMoney = 30;

  myMoney = myMoney - (appleMoney ~/ disccount);
  print(myMoney);

  print(myMoney % 2 == 0);
  print(myMoney.isOdd);
}
