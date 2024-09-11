//! Eager Singleton
class ProductConfig {
  //* Bu sınıftaki apikeyin singleton olmasını ve başka bir yerde yeni bir ProductConfig sınıfı nesenesi
  //* oluşturulmasını istemiyorsak aşağıdaki kullanımı yaparız. Böylece apiKey değiştirilemez.
  static final ProductConfig instance = ProductConfig._('apiKeysajhdjkashdk');
  final String apiKey;

  ProductConfig._(this.apiKey); //! -> Buradaki ._ kullanımı sayesinde bu sınıftan kimse nesne üretemez
  //! degistiremez. sadece ProductConfig.instance.apiKey yazanlar apiKey'i görebilir.
}
