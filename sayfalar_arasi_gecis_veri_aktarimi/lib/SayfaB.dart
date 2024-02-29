import 'package:flutter/material.dart';
import 'package:udemy_sayfa_gecis_uygulamasi/main.dart';

class SayfaB extends StatefulWidget {
  const SayfaB({super.key});

  @override
  State<SayfaB> createState() => _SayfaBState();
}

class _SayfaBState extends State<SayfaB> {

    Future<bool> geriDonusTusu(BuildContext context) async{ //telefonun Geri dönüş butonu.
      print("Telefonun geri dönüş tuşuna tıklandı.");
      return true;
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Sayfa B"),
        leading: IconButton( //Geri butonunu özelleştirme (Sol üst)
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            print("AppBar üzerindeki geri dönüş butonuna tıklandı");
            Navigator.pop(context);
          },
        ),
      ),
      body: WillPopScope(
        onWillPop: () => geriDonusTusu(context),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Geldiği sayfaya dön"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).popUntil((route) => route.isFirst);
                },
                child: Text("Anasayfaya dön"), //Anasayfayı yeniden açar yani geri döner.
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Anasayfa()));
                },
                child: Text("Anasayfaya geçiş yap"), //Yeni bir sayfa oluşturur gibi anasayfayı yeniden açar.
              ),
            ],
          ),
        ),
      ),
    );
  }
}