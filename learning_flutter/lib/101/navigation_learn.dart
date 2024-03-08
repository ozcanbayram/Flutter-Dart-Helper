import 'package:flutter/material.dart';
import '../demos/my_collections_demos.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({super.key});

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn>
    with NavigationManager {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // nacigasyon için bir buton
      floatingActionButton: FloatingActionButton(
        //Ekranda bir buton oluşturduk.
        child: Icon(Icons.navigation),
        onPressed: () {
          //NavigationManager sınıfındaki fonksiyon ile işlemi yapabiliriz.
          navigationToWidget(context, MyCollectionsDemos());
        },
      ),
    );
  }
}

mixin NavigationManager {
  //mixin ile constructorsuz bir class oluşturup yukarıdaki stateful widgeta with ile buradaki özellikleri kazandırabilriz. Bu sınıf sayesinde botuna bu fonksiyonu çağırınca bizden direkt context ve widgeti ister. Çok daha az kod ile aynı işlemi defalarca kez yapabiliriz.
  void navigationToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return widget; //Gideceği sayfa
        },
        fullscreenDialog: true,
        settings: RouteSettings(), //Veri alışverişi
      ),
    );
  }
}
