import 'package:flutter_notes/level-3/generic/generic_advence.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(() {});
  test(
    'Sample Test',
    () {
      final users = [
        const GenericUser('Ozcan', '13', 1),
        const GenericUser('Can', '15', 2),
        const GenericUser('Ali', '27', 3),
      ];
    },
  );
}
