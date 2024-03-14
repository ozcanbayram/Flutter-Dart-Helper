import 'package:flutter/material.dart';
import 'package:udemy_sayfa_gecis_uygulamasi/Kisiler.dart';
import 'package:udemy_sayfa_gecis_uygulamasi/SayfaA.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Anasayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {

                var kisi = Kisiler(isim:"Ozcan", yas: 21, boy: 1.75, bekarMi: true,);

                Navigator.push(context, MaterialPageRoute(builder: (context)=> SayfaA(kisi: kisi)));
              },
              child: Text("Sayfa A'ya git."),
            ),
          ],
        ),
      ),
    );
  }
}
