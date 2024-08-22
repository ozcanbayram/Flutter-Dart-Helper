void main(List<String> args) {}

abstract class IStudent {
  final String name;
  final int age;

  void SaySomething() {
    print(age);
  }

  IStudent(this.name, this.age);
}

class Student implements IStudent {
  //* IStudent abstract sınıfını buraya implement etik.
  //implement işleminde absstract snıfta olan her şey olmak zorundadır.
  //Yani; extend ettiğimiz zaman, sınıf farklı özelliklere sahip olabilir.
  //Fakat implement ettiğimiz zaman abstract sınıfın bir kopyası olmalıdır.
  //Mesela bu örnekte IStudent sınıfına bir fonksiyon ya da herhangi bir şey eklersek aynısını
  //implement ettiğimiz sınıflara da eklememiz gerekecektir.
  final String name;
  final int age;

  Student(this.name, this.age);

  @override
  void SaySomething() {
    // TODO: implement SaySomething
    //Buradaki  SaySomething fonksiyonunu, implement ettiğimiz abstract class'a eklediğimiz fakat buraya eklemediğimiz için hata aldık.
    //ctrl+.  ya da command + . ile buraya hazır bir şekilde olarak ekleyebiliriz.
    //Kısacası, implement ettiğmiz sınıfta bulunan veri, methot, fonksiyon gibi şeyleri implement ettiğimiz sınıflarda da kullanmak zorundayız.
    //Zaten kullanmazsak hata ile uyarılacağızdır.
    print(name);
  }
}

class Student2 implements IStudent {
  final String name;
  final int age;

  Student2(this.name, this.age);

  @override
  void SaySomething() {
    // TODO: implement SaySomething
    print('ozcan');
  }
}
