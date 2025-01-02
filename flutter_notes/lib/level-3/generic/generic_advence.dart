// ignore_for_file: public_member_api_docs, sort_constructors_first
class GenreicUser {
  String name;
  String id;
  int money;
  GenreicUser({
    required this.name,
    required this.id,
    required this.money,
  });
}

class UserManagement {
  void static(GenreicUser user) {
    print(user.name);
  }

  int calculateMoney(List<GenreicUser> users) {
    int sum = 0;
    for (var element in users) {
      sum += element.money;
    }

    final sumMoney = users
        .map((e) => e.money)
        .fold<int>(0, (previousValue, element) => previousValue + element);

    final money = users.fold(
        0, (previousValue, element) => previousValue + element.money);
    return money;
  }
}
