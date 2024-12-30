//? Generic: Tür güvenliğini sağlamak ve kod tekrarını önlemek için kullanılan bir yapıdır.
//? Generic sınıflar, fonksiyonlar ve metodlar oluşturulabilir.
//? Generic sınıflar, fonksiyonlar ve metodlar oluşturulurken, veri türü belirtilmez. Bu veri türü, kullanıldığı zaman belirlenir.
//? Generic ile belirlenen türün dışında bir tür kullanılmaya çalışıldığında hata alınır.
//* ÖRmeğin:
class GenericsExample {
  var names = <String>[];
  //* Bir liste oluşturuldu ve bu liste sadece String türünde veri alabilir.
  //* Çünkü generic olarak String türü belirtilmiştir. (<String>)
  void genericExample() {
    //* Bu metodda sadece String türünde veri eklenebilir.
    names.addAll(['Seth']);//* String veri ekleniyor.
    //! Yalnız aşağıda listeye String dışında bir veri eklemeye çalışıldığında hata alınır.
    // names.addAll([1]); //* Hata: The argument type 'int' can't be assigned to the parameter type 'String'.
  }
}

void main(List<String> args) {}
