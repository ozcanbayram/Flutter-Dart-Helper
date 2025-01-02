import 'package:flutter_notes/level-3/generic/generic_advence.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(
    () {},
  );

  test('Users Money Calculate Test', () {
    final users = [GenreicUser(name: 'ozcan', id: '123', money: 50000)];
    final result = UserManagement().calculateMoney(users);
    expect(result, 40);
  });
}
