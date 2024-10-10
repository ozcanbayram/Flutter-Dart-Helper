import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: _CenterCircularProgress(),
          )
        ],
        title: const Text('Indicator'),
      ),
      body: const LinearProgressIndicator(
          // backgroundColor: Colors.white,
          ),
    );
  }
}

class _CenterCircularProgress extends StatelessWidget {
  const _CenterCircularProgress();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        strokeWidth: 10,
        // value: 0.2,
        backgroundColor: Colors.white,
      ),
    );
  }
}

//İnternetten veriler gelirken bekleme anında ekranda görünmesini istediğimiz widget. 
