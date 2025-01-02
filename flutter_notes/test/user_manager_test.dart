import 'package:flutter_notes/level-3/generic/generic_advence.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(() {});
  test('User calculate ', () {
    final users = [
      const GenericUser('ozcan', '13', 1),
      const GenericUser('can', '15', 2),
    ];
    final userManagement =
        UserManagement(const AdminUser('vadmin', '1', 15, 1));
    final result = userManagement.calculateMoney(users);

    final response = userManagement.showNames<String>(users);

    expect(result, 55);
  });
}
