import 'package:flutter/material.dart';

class ListViewBuilderLEarn extends StatefulWidget {
  const ListViewBuilderLEarn({super.key});

  @override
  State<ListViewBuilderLEarn> createState() => _ListViewBuilderLEarnState();
}

class _ListViewBuilderLEarnState extends State<ListViewBuilderLEarn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        //ListView.Builder daha doğru bir kullanımdır. verilen index ekranda görünen kısım kadar veri oluşturur. Eğer her karttan sonra görünmesini istediğimiz bir widget varsa ListView.separated kullanabiliriz.
        separatorBuilder: (context, index) {
          //Her bir placeHolder kartından sonra bir Divider görünür.
          return Divider(
            color: Colors.amber,
          );
        },
        itemBuilder: (context, index) {
          return SizedBox(
            height: 200,
            child: Column(
              children: [
                Expanded(
                  child: Image.network(
                    'https://picsum.photos/200',
                  ),
                ),
                Text('$index')
              ],
            ),
          );
        },
        itemCount: 15, //15 tane oluşturmasına yarar
      ),
    );
  }
}
