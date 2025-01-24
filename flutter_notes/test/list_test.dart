import 'package:flutter_notes/level-3/generic/generic_advence.dart';
import 'package:flutter_notes/product/widget/card/high_card.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:collection/collection.dart';

void main() {
  setUp(() {});
  test('List test', () {
    List<GenericUser> users = [
      const GenericUser('Ozcan', '13', 1),
      const GenericUser('Can', '15', 2),
      const GenericUser('Ali', '27', 3),
    ];

    // ignore: unused_local_variable
    List<HighCard> highCard = users.map(
      (e) {
        return HighCard(items: e.name.split('').toList());
      },
    ).toList();

    try {
      final response = users.singleWhere(
        (element) => element.findUserName('Ozcan'),
        orElse: () {
          return const GenericUser('null', 'null', 00);
        },
      );
      // ignore: avoid_print
      print(response);
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }

    //money > 5 olanları listele:
    // ignore: avoid_print
    print(users.where((element) => element.money > 5));

    users.addAll([const GenericUser('name', 'id', 5)]); //listeye eleman ekleme

    users.take(5); //ilk 5 elemanı alır

    users.remove(const GenericUser('Ali', '27', 3)); //Ali'yi listeden çıkarır

    users.removeAt(2); //2. indexi listeden çıkarır

    users.removeWhere(
        (element) => element.id == 11); //id'si 11 olanı listeden çıkarır

    users.indexOf(const GenericUser('Ali', '27', 3)); //Ali'nin indexini verir

    users.indexWhere(
        (element) => element.id == '11'); //id'si 11 olanın indexini verir

    users.lastOrNull; //son elemanı verir

    // ignore: avoid_print
    print(users
        .contains(const GenericUser('name', 'id', 5))); //eleman var mı yok mu

        
  });

  test('List test with collection', () {
    List<GenericUser> users = [
      const GenericUser('Ozcan', '13', 1),
      const GenericUser('Can', '15', 2),
      const GenericUser('Ali', '27', 3),
    ];

    final response = users.singleWhereOrNull(
      (element) => element.findUserName('x'),
    );
    // ignore: avoid_print
    print(response);
  });
}
