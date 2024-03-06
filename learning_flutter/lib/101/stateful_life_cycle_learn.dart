import 'package:flutter/material.dart';

class StatefulLifeCycleLearn extends StatefulWidget {
  const StatefulLifeCycleLearn({super.key, required this.message});

  final String message; //final ile required bir mesaj istedik.

  @override
  State<StatefulLifeCycleLearn> createState() => _StatefulLifeCycleLearnState();
}

class _StatefulLifeCycleLearnState extends State<StatefulLifeCycleLearn> {
  String _message = '';
  late final bool _isOdd;
  @override
  void initState() {
    //init state sayfa çizilmeden önce çalışır ve burada sayfa çizilmeden önce mesajın tek mi çift mi olduğunu kontrol edip istenilen değerleri verebilriz.
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;
    _computeName();
  }

  void _computeName() {
    //tek çift kontrolü.
    if (_isOdd) {
      _message = 'Çift';
    } else {
      _message = 'Tek';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //Eşer message dan gelen text tek ise appBar'da tek çift ise çift yazsın:
          title: Text(_message) //Eğer çift sayıda harf varsa
          ),
      body:
          //Eğer message dan gelen text çift ise textButton tek ise FloatingButton olsun.
          widget.message.length.isEven
              ? TextButton(
                  onPressed: () {},
                  child: Text(_message),
                )
              : FloatingActionButton(
                  onPressed: () {},
                  child: Text(_message),
                ),
    );
  }
}

//life ciycle da didUpdateWidget  -> bir widget yenilendiğinde/setState edildiğinde çağrılır.
//didChangedDependencies -> initState'den sonra çağrılır/sayfa değiştiğinde/yenilendiğinde
//dispose -> sayfadan çıkınca çalışır/ sayfa ölünce/ başka bir sayfaya geçince