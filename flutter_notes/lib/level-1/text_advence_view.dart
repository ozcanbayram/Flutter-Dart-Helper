import 'package:flutter/material.dart';

class TextAdvenceView extends StatelessWidget {
  TextAdvenceView({super.key, this.userName});

  final String name = 'Özcan';

  final String? userName;

  //! Aşağıdaki text sınıfını kullanabilmek için:
  final TextProjectTexts keys = TextProjectTexts();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ('Welcome $name (${name.length} harfli)'), //* degişkenden  gelen isim ve ismin karakter sayısı
              style: ProjectTextStyle.welcomeTextStyle,
              //* Burada aşağıda hazırlamış olduğumuz stil sınıfından bir stily tanımladık.
              maxLines: 3,
              // uzun olan metnin sadece 3 satırının görünmesini istiyorsak
              overflow: TextOverflow.ellipsis,
              // overflow: TextOverflow.ellipsis, 3 satırın sonuna üç nokta ekleyerek metinin devamının olduğunu belirtmek için kullanılabilir
              textAlign: TextAlign.center, // yazıyı ortalar
            ),

            //* ----------------------------------------------------
            //* ----------------------------------------------------

//! Yukarıdaki sınıf ile stil tanımlamak basit seviyede güzel bir kullanımdır.
//! Bu kullanım gibi daha gelişmiş yollar da vardır.
//! Aşağıdaki text için tema ile stil tanımlayalım.
//! Bu yöntemin avantajı: Mateial güncellendiği zaman uygulamadaki başlık vb... içeriklerin de güncellenmesi.
//! Tema üzerinden style yazmak önerilen bir yazım şeklidir.

            Text(
              ('hello $name'), //* degişkenden gelen isim ve ismin karakter sayısı
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge // kullanılabilir -> large, medium, small...
                  ?.copyWith(color: TextProjectColors.amberColor),
              //? Renk aşağıdaki TextProjectColors sınıfından geliyor.
              //* Tema sınıfındaki hazır olarak flutter ile birlikte gelen özellikleri Theme.of(context) ile kullanabiliriz.
              //* Bu özelliklere material typography denir ve internetten araştırarak kullanabileceğimiz tema stillerini görebiliriz.
              maxLines: 3,
              // uzun olan metnin sadece 3 satırının görünmesini istiyorsak
              overflow: TextOverflow.ellipsis,
              // overflow: TextOverflow.ellipsis, 3 satırın sonuna üç nokta ekleyerek metinin devamının olduğunu belirtmek için kullanılabilir
              textAlign: TextAlign.center, // yazıyı ortalar
            ),

            //* ----------------------------------------------------
            //* ----------------------------------------------------

            Text(userName ?? ''),
            //? -> Burada gelecek olan değerin null gelme ihtimaline karşı null kontrolu yaparak
            //? null gelmesi durumunda '' boş stringinin görünmesini belirledim.
            //? Yani verinin gelmeme ihtimali varsa direkt olarak Text(userName!) şeklinde yazmamlıyız.

            Text(keys.welcome),
            //? Aşağıdaki TextProjectTexts sınıfında tanımlanan welcome değerini yukarıda keys değişkenine
            //? atatıdk ve burada kullandık. 
          ],
        ), //Basit bir text görünümü
      ),
    );
  }
}

//! Advence kısmında yapacağımız şeylerden biri, textlerin stillerini Text Widget'inin içerisinde
//! Style olarak tanımlamak yerine ayrı bir yerde stilleri tasarlamak ve gerekli yerlerde kullanmaktır.
//! Örneğin aşağıdaki sınıfta textler için bir style tanımlayarak bu sitilleri yukarıdaki textlerde kullanalım.

class ProjectTextStyle {
  static TextStyle welcomeTextStyle = const TextStyle(
    fontSize: 16, // yazı boutu
    fontWeight: FontWeight.w600, //yazı kalınlığı
    wordSpacing: 5, // kelimeler arası boşluk
    letterSpacing: 2, // harfler arası boşluk
    fontStyle: FontStyle.italic, // yazının sitilini belirleyebiliriz.
    color: Colors.lightBlueAccent,
  );
}

//! Aynı şekilde renkler için de bir class tanımlayarak projedeki renkleri tek bir class ile kontrol edebiliriz.

class TextProjectColors {
  static Color redColor = Colors.red;
  static Color amberColor = Colors.amber;
}

//! Proejdeki text yazılarını da  burada sınıf  olarak yönetebiliriz.

class TextProjectTexts {
  final String welcome = 'Welcome';
}
