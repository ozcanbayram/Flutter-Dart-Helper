// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class UserManagement<T extends AdminUser> {
  final T admin;

  UserManagement(this.admin);
  void sayName(GenericUser user) {
    print(user.name);
  }

  int calculateMoney(List<GenericUser> users) {
    // ignore: unused_local_variable
    int sum = 0;
    for (var item in users) {
      sum += item.money;
    }
    int initialValue = admin.role == 1 ? admin.money : 0;

    // ignore: unused_local_variable
    final sumMoney = users.map((e) => e.money).fold<int>(
        initialValue, (previousValue, element) => previousValue + element);

    final monney = users.fold<int>(initialValue,
        (previousValue, element) => previousValue + element.money);
    return monney;
  }

  Iterable<OBModel<R>>? showNames<R>(List<GenericUser> users) {
    if (R == String) {
      final names =
          users.map((e) => OBModel<R>(e.name.split('').toList().cast<R>()));
      return names;
    }
    return null;
  }
}

class OBModel<T> {
  final String name = 'vb';
  final List<T> items;

  OBModel(this.items);
}

class GenericUser extends Equatable {
  final String name;
  final String id;
  final int money;

  const GenericUser(this.name, this.id, this.money);

  bool findUserName(String name) {
    return this.name == name;
  }

  @override
  String toString() => 'GenericUser(name: $name, id: $id, money: $money)';

  @override
  List<Object?> get props => [id];
}

class AdminUser extends GenericUser {
  final int role;
  const AdminUser(super.name, super.id, super.money, this.role);
}
