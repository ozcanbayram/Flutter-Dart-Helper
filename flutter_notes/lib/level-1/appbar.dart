import 'package:flutter/material.dart';

class AppBarView extends StatelessWidget {
  const AppBarView({super.key});

  final String _appTitle = 'App Bar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // status bar ögelerinin rengini ayarlar.

        centerTitle: true,
        // title'i ortalar. vermezsek androidde sola alır iosta ortada olus

        //* Temada belirlediğimiz özellikleri burda vermemize gerek yok:
        // backgroundColor: Colors.transparent,
        // elevation: 0,
        // systemOverlayStyle: SystemUiOverlayStyle.light,

        title: Text(_appTitle), // baslik

        leading: const Icon(Icons.chevron_left), // sol ksıım

        actions: [
          // sağ kısım
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.messenger_outline_outlined),
          ),
          const Center(
            child: SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                color: Colors.amber,
              ),
            ),
          ),
        ],

        //* Eger sayfada otomotik olarak back butonu gelmesini istemiyorsak:
        //* automaticallyImplyLeading: false,

        actionsIconTheme: const IconThemeData(color: Colors.red),
        // action kısmındaki ikonların temasını degistirmek.

        toolbarTextStyle: const TextStyle(fontWeight: FontWeight.w600),
        // toolbarın stilini degistirir.
      ),
      body: Column(
        children: [
          LinearProgressIndicator(
            color: Colors.grey[600],
          )
        ],
      ),
    );
  }
}


//! Daha gelişmiş ve doğru kullanım olarak, appbarın özellikleri tema sayfasında belirlenir. Her sayfa için yeniden yazılmaz.
//! Tüm bu ozellikleri thema sayfası oluşturarak belirleyebiliriz, ya da main.dart sayfasındaki tema kısmında belirleyebilriz.
