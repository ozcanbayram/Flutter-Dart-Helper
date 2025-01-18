// ignore_for_file: unused_field

import 'package:dio/dio.dart';

class ProjectNetworkManager {
  ProjectNetworkManager._() {
    // NetworkManager._() ile NetworkManager sınıfının private bir constructor olduğunu belirttik.
    _dio = Dio(BaseOptions(baseUrl: 'pub.dev'));
  }
  late final _dio;

  static final ProjectNetworkManager instance = ProjectNetworkManager._();
  // Singleton pattern kullanarak NetworkManager sınıfından sadece bir tane instance oluşturulmasını sağladık.

  Dio get service => _dio;
  // Dio instance'ını döndürür. Dio get dio => _dio; ile _dio'yu döndürdük. Bu sayede başka sayfalardan servis ile _dio'ya erişim sağlayabiliriz.

  // daha sonradan _dio ya başka özellikler vermek istersek aşağıdaki gibi yapabiliriz:
  void addBaseHederToToken(String token) {
    _dio.options = _dio.options.copyWith(headers: {"Authorization": token});
    //Bu metot ile: Dio instance'ına header ekleyebiliriz.
    //eğer kullanıcı login olduysa ve token aldıysa bu token'ı header'a ekleyebiliriz. Ve bunu backende göndeririz.
  }
}

// Bu kodlar reqres_view_model.dart sayfasında kullanılmıştır.
