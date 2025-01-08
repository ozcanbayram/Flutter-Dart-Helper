extension ColorStringExtension on String? {
  // servisten gelen renk kodunu burada kullanılabilir hale getirelim.
  int get colorValue {
    var newColor = this?.replaceFirst('#', '0xff') ?? '';
    return int.parse(newColor);
  }
}


// Bu sayfada ne yaptık:
// 1- ColorStringExtension adında bir extension oluşturduk ve bu extension içinde String türünde bir değişken oluşturduk.
// 2- Bu değişkenin içinde colorValue adında bir get metodu oluşturduk ve bu metotun dönüş tipini int olarak belirledik.
// 3- Bu metotun içinde this değişkenini kontrol ettik ve eğer this değişkeni null değilse replaceFirst metotunu çağırdık ve bu metotun içinde '#' karakterini '0xff' karakteri ile değiştirdik.
// 4- Bu işlemi yaptıktan sonra int.parse metotunu kullanarak bu değişkeni int türüne çevirdik.
// 5- Bu sayede ColorStringExtension extension sınıfı içindeki işlemleri gerçekleştirmiş olduk.
// 6- Bu extension sınıfını kullanarak servisten gelen renk kodunu kullanılabilir hale getirdik.
