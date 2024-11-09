//! Image widgetini kullanırken en rahat ve kullanışlı şekilde nasıl kullanabileceğimizi inceleyelim.
//! pubspec.yaml sayfasına her resmi tek tek eklemek yerine bu işlem ile kullanabiliriz:
//! pubspec.yaml doyasına assets altına bu satırı eklemeliyiz: - asset/images/
import 'package:flutter/material.dart';

enum ImageEnum {
  // buraya görsellerimizin ismini ekleriz
  book
}

//!daha sonra bu enum sınıfının gücünü kullanacağımız bir sınıf oluşturarak bu görsel isimlerini kullanabileceğimiz bir metot yazarız:

extension ImageEnumExtension on ImageEnum {
  String get _toPath => 'assets/images/ic_$name.png';

  Image get toImage => Image.asset(_toPath);
}

//! burada enum sınıfına eklenen isimleri kullanabileceğimiz metot yazarak image kullanımını çokdaha verimli hale getirdik.
//? Kullanımı:
//*  ImageEnum.book.toImage  --> bu şekilde metodu kullanarak sayfalarımıza görsel ekleyebiliriz.
//? book: örnek resim ismi.
//? ImageEnum: resmin isminin yazılı olduğu enım sınıfı.
//? toImage: resmin yaolunun tanımlı olduğu ve bunun bir image olduğunu belirten metot. 
