import 'package:flutter/material.dart';

class ListViewBuilderLearn extends StatefulWidget {
  const ListViewBuilderLearn({super.key});

  @override
  State<ListViewBuilderLearn> createState() => _ListViewBuilderLearnState();
}

class _ListViewBuilderLearnState extends State<ListViewBuilderLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Builder'),
      ),
      body: ListView.separated(
        //ekranin görüğü kadarını yükler ve gçsterir.
        itemBuilder: (context, index) {
          return Text('$index');
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(
          color: Colors.amber,
        ),
        itemCount: 50,
      ),
    );
  }
}
