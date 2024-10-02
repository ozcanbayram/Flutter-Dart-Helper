import 'package:flutter/material.dart';

class TextView extends StatelessWidget {
  const TextView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          ('About Text Widget' * 10), // yaziyi 10 kez yazdirir.
          style: const TextStyle(
            fontSize: 16, // yazı boutu
            fontWeight: FontWeight.w600, //yazı kalınlığı
            wordSpacing: 5, // kelimeler arası boşluk
            letterSpacing: 2, // harfler arası boşluk
            fontStyle: FontStyle.italic, // yazının sitilini belirleyebiliriz.
            color: Colors.lightBlueAccent,
          ),
          maxLines:
              3, // uzun olan metnin sadece 3 satırının görünmesini istiyorsak
          overflow: TextOverflow.ellipsis,
          // overflow: TextOverflow.ellipsis, 3 satırın sonuna üç nokta ekleyerek metinin devamının olduğunu belirtmek için kullanılabilir
          textAlign: TextAlign.center, // yazıyı ortalar
        ), //Basit bir text görünümü
      ),
    );
  }
}


// Yukarıdaki Text widgeti dediğimiz görünüm aslında TextView isimli sınıfa StatlessWidget özelliklerini kazandırmak için
// StatlessWidget'i extends ettiğimiz bir sınıftır. Ekranlarımızı bu şekilde statless ya da statefull widgetlarını extend ederek (yani
// bu widgetların güçlerini kullanarak, özelliklerini sınıfımıza ekleyerek) tasarlarız.

// Bu sayfada bir text'e sitil verirken direkt olarak text içeirisnde sititllendirme yaptık fakat projenin her yerine bu şekilde 
// widgetların görünümlerini tek tek kontrol etmek zor olacaktır. Bunun için tema içerisinde ya da custom bir text widgeti içerisinde 
// sitil gibi özelliklerin tek bir yerden kontrol edilmesi daha iyi olacaktır.