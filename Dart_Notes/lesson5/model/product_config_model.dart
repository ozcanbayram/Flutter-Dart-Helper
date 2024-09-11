//! Eager Singleton
class ProductConfig {
  //* Bu sınıftaki apikeyin singleton olmasını ve başka bir yerde yeni bir ProductConfig sınıfı nesenesi
  //* oluşturulmasını istemiyorsak aşağıdaki kullanımı yaparız. Böylece apiKey değiştirilemez.
  static final ProductConfig instance = ProductConfig._('apiKeysajhdjkashdk');
  final String apiKey;

  ProductConfig._(
      this.apiKey); //! -> Buradaki ._ kullanımı sayesinde bu sınıftan kimse nesne üretemez
  //! degistiremez. sadece ProductConfig.instance.apiKey yazanlar apiKey'i görebilir.
}

//! Lazy singleton. Yukarıdaki eager singleton ile aynı işe yarar. Farklı şudur:
//* Aşağıdaki  singleton kullanımında, uygulama başlarken bu verinin değeri olmayacak ve bellekte yer...
//* ...kaplamayacak eğer bu veri kullanılırsa (bu sınıf çağrılırsa) değer alacak ve bellekte yer tutacak.

class ProductLazySingleton {
  static ProductLazySingleton? _instance;
  static ProductLazySingleton get instance {
    if (_instance == null) _instance = ProductLazySingleton._init();
    return _instance!;
  }

  ProductLazySingleton._init();
}
