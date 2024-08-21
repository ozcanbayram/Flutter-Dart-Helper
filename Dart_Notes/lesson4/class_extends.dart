void main() {}

class User {
  final String name;
  final String money;

  User(this.name, this.money);
}

class BankUser {
  final String name;
  final String money;
  final int bankingCode;

  BankUser(this.name, this.money, this.bankingCode);
}

class SpecialUser {
  final String name;
  final String money;
  final int bankingCode;
  final int disccount;

  SpecialUser(this.name, this.money, this.bankingCode, this.disccount);
}
