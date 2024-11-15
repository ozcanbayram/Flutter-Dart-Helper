import 'package:flutter/material.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({super.key});

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Tab Learn'),
          ),
          body: TabBarView(children: [
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.green,
            ),
          ]),
        ));
  }
}
