//* GENERICS HAKKINDA:
//? Generic: Tür güvenliğini sağlamak ve kod tekrarını önlemek için kullanılan bir yapıdır.
//? Generic sınıflar, fonksiyonlar ve metodlar oluşturulabilir.
//? Generic sınıflar, fonksiyonlar ve metodlar oluşturulurken, veri türü belirtilmez. Bu veri türü, kullanıldığı zaman belirlenir.

//! * * * * * 1 * * * * *

//* Generic ile belirlenen türün dışında bir tür kullanılmaya çalışıldığında hata alınır.
//* Önreğin:
class GenericsExample {
  var names = <String>[];
  //* Bir liste oluşturuldu ve bu liste sadece String türünde veri alabilir.
  //* Çünkü generic olarak String türü belirtilmiştir. (<String>)
  void genericExample() {
    //* Bu metodda sadece String türünde veri eklenebilir.
    names.addAll(['Seth']); //* String veri ekleniyor.
    //! Yalnız aşağıda listeye String dışında bir veri eklemeye çalışıldığında hata alınır.
    // names.addAll([1]); //* Hata: The argument type 'int' can't be assigned to the parameter type 'String'.
  }
}

//! * * * * * 2 * * * * *

//* Generic kod tekrarını azaltmak için de kullanılır.
//* Örneğin: bir soyut sınıf (arayüz) oluşturalım ve bu sınıf Generic kullanmadan bir veriyi önbelleğe işlemi yapalım.
abstract class ObjectChaec {
  Object getByKey(String key);
  void setByKey(String key, Object value);
}

//* Şimdi de sadece metinsel ifadeleri önbelleğe kaydedebileceğimiz bir soyut sınıf yazalım.
abstract class StringCache {
  String getByKey(String key);
  void setByKEy(String key, String value);
}

//* Bu şekilde her bir kayıt edilecek tür için (Object,String...) farklı soyut sınıflar yerine;
//* Generic T type olarak tanımlayabiliriz.
//* T, geçici türdür. Bir geliştiricinin daha sonra tanımlayacağı bir tür olarak düşünebileceğiniz bir yer tutucudur.
//* Şimdi Generic kullanarak nasıl daha az kodla bu işlemi yapabileceğimizi inceleyelim:
abstract class Cache<T> {
  T getByKey(String key);
  void setByKey(String key, T value);
  
  //! NOT: bu örenkte yapılan önbelleğe kaydetme işlemini sadece bir metinsel anahtar kelime (String key) ile, bu metinsel anahtara atanacak olan bir değerin (T value)
  //! kayıt edilmesi işlemi olarak düşünebilrisiniz. Generic bir çok yerde kullanılabilir ve kod geliştirmeye fayda sağlayabilir.   

  //? Genel türler (Generic), tüm bu arayüzleri oluşturma zahmetinden sizi kurtarabilir. 
  //? Bunun yerine, bir tür parametresi alan tek bir arayüz oluşturabilirsiniz
}
