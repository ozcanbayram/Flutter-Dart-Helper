import 'package:flutter/material.dart';

class StatefullLifeCycleLearn extends StatefulWidget {
  const StatefullLifeCycleLearn({super.key, required this.message});

  final String message;

  @override
  State<StatefullLifeCycleLearn> createState() =>
      _StatefullLifeCycleLearnState();
}

class _StatefullLifeCycleLearnState extends State<StatefullLifeCycleLearn> {
  //mesaş tekse butonda tek çiftse çift yazsın.
  String _message = '';
  late final bool _isOdd;
  //! late ile init state / constroctor anında değer geleceğini belirtiriz.
  @override
  void initState() {
    //! initState -> Widget çizilmeye başlamadan önce çalışır ve bittikten sonra ekran çizilir.
    //! tek çift kondtolünü örnek olarak burada yapalım:
    super.initState();
    _message = widget.message;

    _isOdd = widget.message.length.isOdd;

    _computeName();
  }

  void _computeName() {
    if (_isOdd) {
      _message += ' Çift';
    } else {
      _message += ' Tek';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Eğer mesaj'ın harf sayısı tek ise tek yazsın çift ise çift yazsın.
          title: Text(_message),
        ),
        //eğer mesaj  tek ise elevated button çift ise text button olsun:
        body: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget.message.length.isOdd
                ? ElevatedButton(onPressed: () {}, child: Text(_message))
                : TextButton(onPressed: () {}, child: Text(_message)),
          ],
        )));
  }
}
