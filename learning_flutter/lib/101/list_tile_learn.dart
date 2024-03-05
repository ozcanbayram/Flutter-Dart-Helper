import 'package:flutter/material.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text('Learning Flutter'), //baslik
                  subtitle: Text(
                      'How i learned do mobile app with Flutter.'), //Açıklama
                  leading: Icon(Icons.account_circle), //sol tarafa ikon eklemek
                  trailing: Icon(Icons.chevron_right), //sağ tarafa ikon eklemek
                  onTap: () {},
                  //dense: true, //Sıkıştırmaya yarar. kendi paddinglerini azaltır.
                  // contentPadding: EdgeInsets.zero, // ListTile'nin paddinglerini sıfırlar. genellikle mainde ListTileTheme ile verilir.
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
