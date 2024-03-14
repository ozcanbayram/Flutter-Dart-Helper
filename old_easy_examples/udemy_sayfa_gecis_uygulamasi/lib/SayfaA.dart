import 'package:flutter/material.dart';
import 'package:udemy_sayfa_gecis_uygulamasi/Kisiler.dart';
import 'package:udemy_sayfa_gecis_uygulamasi/SayfaB.dart';

class SayfaA extends StatefulWidget {

  Kisiler kisi;


  SayfaA({required this.kisi});

  @override
  State<SayfaA> createState() => _SayfaAState();
}

class _SayfaAState extends State<SayfaA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Sayfa A"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SayfaB()));
              },
              child: Text("Sayfa B'ye git."),
            ),
            Text("isim: ${widget.kisi.isim}"),
            Text("yas: ${widget.kisi.yas}"),
            Text("boy: ${widget.kisi.boy}"),
            Text("bekar mi: ${widget.kisi.bekarMi}"),
          ],
        ),
      ),
    );
  }
}
