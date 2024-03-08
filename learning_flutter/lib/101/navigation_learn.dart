import 'package:flutter/material.dart';
import 'navigate_detail.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({super.key});

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn>
    with NavigationManager {
//Tıklanan itemleri tutmak ve bu itemin rengini değiştirmek için bizim bir listeye ve fonksiyona ihtiyacımız var.

  List<int> selectedItems =
      []; //Bu listeyi başta boş bırakırız tıklanılan item oldukça ekleme yaparız.

  void addSelected(int index, bool isAdd) {
    setState(() {
      isAdd ? selectedItems.add(index) : selectedItems.remove(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // nacigasyon için bir buton
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(50),
            child: TextButton(
              onPressed: () async {
                //NavigationManager sınıfındaki fonksiyon ile işlemi yapabiliriz.
                final response = await navigationToWidgetNormal(
                    context,
                    NavigateDetailLearn(
                      isOkay: selectedItems.contains(index),
                    ));
                if (response is bool) {
                  addSelected(index, response);
                }
              },
              child: Placeholder(
                color:
                    selectedItems.contains(index) ? Colors.green : Colors.red,
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        //Ekranda bir buton oluşturduk.
        child: Icon(Icons.navigation),
        onPressed: () async {},
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
        //fullscreenDialog: true,
        settings: RouteSettings(), //Veri alışverişi
      ),
    );
  }

// bu metot bir veri gideceği anlamına gelir.
  Future<T?> navigationToWidgetNormal<T>(BuildContext context, Widget widget) {
    return Navigator.of(context).push<T>(
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
