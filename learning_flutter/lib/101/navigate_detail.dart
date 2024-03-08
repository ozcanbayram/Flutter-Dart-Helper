import 'package:flutter/material.dart';

class NavigateDetailLearn extends StatefulWidget {
  const NavigateDetailLearn({super.key, this.isOkay = false});

  final bool isOkay;

  @override
  State<NavigateDetailLearn> createState() => _NavigateDetailLearnState();
}

class _NavigateDetailLearnState extends State<NavigateDetailLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: ElevatedButton.icon(
        onPressed: () {
          //burada diğer sayfaya bir veri göndererek gideceğiz. .pop kullanacağız.
          Navigator.of(context).pop(!widget
              .isOkay); //Diğer sayfadaki response değeri ture olarak geri dönecek. Ve bu sayfadan butona tıklanarak geri dönüldüğünü anlayacak.
        },
        icon: Icon(
          Icons.check,
          color: widget.isOkay ? Colors.red : Colors.teal,
        ),
        label: widget.isOkay
            ? Text('Red')
            : Text(
                'Onayla',
              ),
        //is okay ise red dönsün
      )),
    );
  }
}

//Bu sayfadaki senaryo: navigation_learn.dart sayfasından buton ile buraya gelinecek. buradan geri dönüldüğü zaman basılan widgetin rengi değişecek.
