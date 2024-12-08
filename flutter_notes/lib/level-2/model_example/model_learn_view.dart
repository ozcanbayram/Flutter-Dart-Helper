import 'package:flutter/material.dart';
import 'package:flutter_notes/level-2/model_example/model_learn.dart';

//! model_learn.dart sayfasında oluşturduğumuz modelleri buradak kullanarak örneklendirelim.

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({super.key});

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  //* PostModel8 ile ürettiğimiz user'i ekranda gösterelim:
  //* degeri sonradan degiseceği için final değil var tanımlanır
  var userExample1 = PostModel8(userId: 8, title: 'PostModel8 ');

  @override
  void initState() {
    super.initState();

    //* PostModel1:
    final user1 = PostModel1()
      ..id = 1
      ..userId = 1
      ..title = 'PostModel1 için baslik'
      ..body = 'PostModel2 için içerik';
    //bir diğer kullanımı:
    user1.body = 'Post Model 1 kullanımı için';

    //* PostModel2:
    //doğrudan değişkenler için değerleri tanımlamamızı ister.
    // ignore: unused_local_variable
    final user2 =
        PostModel2(2, 2, 'PostModel2 için baslik', 'PostModel2 için içerik');

    //* PostModel3:
    //doğrudan değişkenler için değerleri tanımlamamızı ister.
    //! ama burada verilen değeri daha sonra değiştiremeyiz. (final)
    // ignore: unused_local_variable
    final user3 =
        PostModel3(3, 3, 'PostModel3 için baslik', 'PostModel3 için içerik');
    // user3.body = 'aslkd'; --> hata verir.

    //* PostModel4:
    //burada değişkenler named paramatre olarak gelir. PostModel3'e göre daha okunaklıdır.
    //final oalrak tanımlandıkalrı için değerleri sonradan değiştirilemez.
    // ignore: unused_local_variable
    final user4 = PostModel4(
        userId: 4,
        id: 4,
        title: 'PostModel4 için baslik',
        body: 'PostModel4 için içerik');

    //* PostModel5:
    // burada da değişkenler named parametre olarak gelir.
    // model içerisinde private olarak tanımlandıkları için buradan tekrar erişilemez.
    // erişilmesi için model sınıfında encapsulation işleminin yapılması gerekir.  (int get userId => _userId;)
    // ignore: unused_local_variable
    final user5 = PostModel5(
        userId: 5,
        id: 5,
        title: 'PostModel5 için baslik',
        body: 'PostModel5 için içerik');

    //* PostModel6:
    // Bu model de PostModel5 gibidir sadece farklı bir şekilde yazılmıştır model_learn.dart üzerinden inceleyebilrisiniz.
    // ignore: unused_local_variable
    final user6 = PostModel6(
        userId: 6,
        id: 6,
        title: 'PostModel6 için baslik',
        body: 'PostModel6 için içerik');

    //* PostModel7:
    // Bu modelde değer vermediğimiz durumda default değerlerini alarak ekranda görünür.
    // yine burada da private olduğu için encapsule edilmeden erişilemez.
    // ignore: unused_local_variable
    final user7 = PostModel7();

    //* PostModel8:
    //! Veriler servisten geliyor ise önerilen model budur.
    //burada hepsi nullable tanımlanmıştır ve isteğeğ göre değer de verilebilir.
    // ignore: unused_local_variable
    final user8 = PostModel8(userId: 8, body: 'PostModel8 içeriği');
  }

  @override
  Widget build(BuildContext context) {
    //*Servisten geldiğini varsayarak PostModel8 ile kullanılan bir örneği ekranda gösterelim:

    return Scaffold(
      //* Butona tıklayınca başlık değeri değişsin.
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey,
        onPressed: () {
          setState(() {
            //! modelde tanımlanan copyWith kullanımı ile değiştirmek.
            userExample1 = userExample1.copyWith(title: 'copyWith ile değişti');

            //? mesela body değerini burada değiştirmek istiyorsak, model sınıfında bir metot ile bunu yapabilriiz.
            userExample1.changeBody('Body Degisti');
          });
        },
        child: const Icon(Icons.refresh),
      ),
      appBar: AppBar(
        //? null tanımlandığı için null kontrolü yaparız.
        title: Text(userExample1.title ?? 'Başlık tanımlanmamış'),
      ),
      body: Center(
        child: Text(userExample1.body ?? 'Body Bos'),
      ),
    );
  }
}
