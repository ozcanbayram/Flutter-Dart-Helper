import 'package:flutter/material.dart';
import 'package:flutter_full_learn_one/202/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({super.key});

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  //Örnek olarak PostModel9'u kullanalım. Daha sonra güncelleyebilmek için final yerine var kullanalım.
  var user9 = PostModel8(body: 'deger');
  @override
  void initState() {
    super.initState();

    //model_learn.dart sayfasındaki modellerin kullanuımını görelim.

    // ignore: unused_local_variable
    final user1 = PostModel1()
      //user1.body = 'Hello'; //değer atandı. Değerleri aşağıdaki gibi de atayabilirdik: (..Koyarak)
      ..userId = 1
      ..body = 'Ozcan'
      ..id = 2
      ..title = 'BASLIK';

    final user2 = PostModel2(1, 2, 'a', 'b');
    //final olmadıklarından dolayı değerleri değiştirilebilir.
    user2.body = 'Deger degisti';

    // ignore: unused_local_variable
    final user3 = PostModel3(1, 2, 'title', 'body');
    //final olarak tanımlandıkları için değerleri sonradan değiştirilemez.

    // ignore: unused_local_variable
    final user4 = PostModel4(userId: 1, id: 2, title: 'title', body: 'body');
    //veriler named olarak geldi. Final oldukları için değerleri değiştirilemez.

    final user5 = PostModel5(userId: 1, id: 2, title: 'title', body: 'body');
    //private olarak belirlendikleri için başka yerde verileri görmek için değişkenlere erişilemez. Encapsulation yapabiliriz.
    user5.userId;

    // ignore: unused_local_variable
    final user6 = PostModel6(userId: 1, id: 2, title: 'title', body: 'body');
    //Bu model PostModel5'in farklı bir yazım şeklidir. İşlevleri aynıdır.

    // ignore: unused_local_variable
    final user7 = PostModel7();
    //Burada değer istemez, değer vermezsek otomatik olarak default değerlerini alır.

    //Servisten data çeliyorsak en mantıklı yöntemlerden biri PostModel8 dir:
    // ignore: unused_local_variable
    final user8 = PostModel8(body: 'deger');
    //named oalrak gelen değerleri buradan belirtebiliriz. Belirtmez isek null olarak gelir.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Veriyi güncellemek için bir buton oluşturalım ve basınca yukarıda tanımlanan user9 verisi güncellensin.
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.update),
        onPressed: () {
          setState(() {
            //tıklanınca değişiklik olacağı için setState
            user9 = user9.copyWith(title: 'ozcan');
            //model_learn.dart sayfasında yazdığımız updateBody metodu ile body değerini güncelleyelim.
            user9.updateBody('Güncellenen body değeri');
          });
        },
      ),
      appBar: AppBar(
        //örnek olarak servisten PostModel8 ile gelecek olan değeri title olarak yazdıralım.
        title: Text(user9.body ?? 'not has any data'),
        //Eğer bir veri gelmezse not has any data yazmasını belirttik. Null kontrolünü yapmalıyız çünkü PostModel8 de nullable olarak tanımladık.
      ),
    );
  }
}
