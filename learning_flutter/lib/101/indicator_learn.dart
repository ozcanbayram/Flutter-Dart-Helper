import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [CenterCircularProgress()],
      ),
      body: LinearProgressIndicator(), //üst loading çizgisi
    );
  }
}

class CenterCircularProgress extends StatelessWidget {
  //Bekleme ekranında dönen yuvarlak.
  const CenterCircularProgress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        strokeWidth: 1, //Kalınlık
        //backgroundColor: Colors.white, //arkaplan rengi
        //value: 0.9,
      ), //Rengini maindeki thema ile belirledim.
    );
  }
}
