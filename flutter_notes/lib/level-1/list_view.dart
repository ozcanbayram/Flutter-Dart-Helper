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
      appBar: AppBar(
        title: const Text('List View'),
      ),
      body: ListView(
        children: [
          FittedBox(
            child: Text(
              'Merhaba',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          Container(height: 300, color: Colors.amber),
          const Divider(),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal, //* yatay liste yapar
              children: [
                Container(width: 200, color: Colors.red),
                Container(width: 200, color: Colors.white),
                Container(width: 200, color: Colors.red),
                Container(width: 200, color: Colors.white),
                Container(width: 200, color: Colors.red),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.clear),
          ),
          //! xxxxxxx
          FittedBox(
            child: Text(
              'Merhaba',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          Container(height: 300, color: Colors.red),
          const Divider(),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal, //* yatay liste yapar
              children: [
                Container(width: 200, color: Colors.yellow),
                Container(width: 200, color: Colors.white),
                Container(width: 200, color: Colors.yellow),
                Container(width: 200, color: Colors.white),
                Container(width: 200, color: Colors.yellow),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.clear),
          ),
          const _ListViewDemo(),
        ],
      ),
    );
  }
}

class _ListViewDemo extends StatefulWidget {
  const _ListViewDemo();

  @override
  State<_ListViewDemo> createState() => __ListViewDemoState();
}

class __ListViewDemoState extends State<_ListViewDemo> {
  @override
  void initState() {
    super.initState();
    // ignore: avoid_print
    print('Demo sayfası göründü');
  }

  @override
  void dispose() {
    super.dispose();
    // ignore: avoid_print
    print('Demo sayfasından çıkıldı');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: 200,
        height: 200,
        color: Colors.orange,
        child: Center(
            child: Text(
          'Demo Sayfası',
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(color: Colors.black),
        )),
      ),
    );
  }
}
