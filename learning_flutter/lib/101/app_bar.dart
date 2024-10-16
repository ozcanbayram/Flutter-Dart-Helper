import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({super.key});
  final _title = 'Learn AppBar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title), //baslik
        centerTitle: true, //basliği ortalar
        backgroundColor: Colors.transparent, //arkaplanı transparan yapar
        elevation: 0, //icerigi öne getirir
        systemOverlayStyle: SystemUiOverlayStyle
            .light, // saat, wifi gibi sistem görünürlerini light/darl olarak ayarlar
        //actionsIconTheme: IconThemeData.(color: Colors.red), // ikon rengi
        toolbarTextStyle: const TextStyle(color: Colors.amber),
        automaticallyImplyLeading:
            false, // Default olarak backButtonu gelmesin demek
        leadingWidth: 23,
        leading: const Icon(Icons.chevron_left), // geri butonu
        actions: [
          //sağda menü butonu
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          //Center(child: CircularProgressIndicator()) //bekleme ekranlarındaki dönen yuvarlak
        ],
      ),
    );
  }
}
