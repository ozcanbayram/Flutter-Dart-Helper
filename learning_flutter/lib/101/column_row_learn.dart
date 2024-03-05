import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    color: Colors.red,
                  )),
                  Expanded(
                      child: Container(
                    color: Colors.blue,
                  )),
                  Expanded(
                      child: Container(
                    color: Colors.pink,
                  )),
                  Expanded(
                      child: Container(
                    color: Colors.teal,
                  )),
                ],
              )),
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.blue,
              )),
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.pink,
              )),
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.teal,
              )),
        ],
      ),
    );
  }
}
