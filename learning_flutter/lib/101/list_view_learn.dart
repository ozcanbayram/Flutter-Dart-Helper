import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({super.key});

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.zero,
        //Dikey liste
        children: [
          FittedBox(
            child: Text(
              'Merhaba',
              style: Theme.of(context).textTheme.headlineLarge,
              maxLines: 1,
            ),
          ),
          Container(
            color: Colors.amber,
            height: 300,
          ),
          Divider(),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal, //Yatay olarak ayarlamak için.
              //Yatay liste
              children: [
                Container(
                  color: Colors.teal,
                  width: 300,
                ),
                Container(
                  color: Colors.blueAccent,
                  width: 300,
                ),
                Container(
                  color: Colors.teal,
                  width: 300,
                ),
                Container(
                  color: Colors.blueAccent,
                  width: 300,
                ),
              ],
            ),
          ),
          Divider(),
          Container(
            color: Colors.amber,
            height: 300,
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.close)),
          _ListDemo(),
        ],
      ),
    );
  }
}

class _ListDemo extends StatefulWidget {
  const _ListDemo({super.key});

  @override
  State<_ListDemo> createState() => __ListDemoState();
}

class __ListDemoState extends State<_ListDemo> {
  @override
  void initState() {
    //initState ile widget çağrılınca hello yazısını görerek listView çalişma mantiğini görebiliriz. Listede asaği inince ve widget cağrilinca görürüz.
    super.initState();
    print('Hello ');
  }

  @override
  void dispose() {
    //ekran yukarı kaydırılıp widget kaybolunca dispose calisarak listView'in calisma mantigini bize gosterir.
    super.dispose();
    print('Exit');
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
