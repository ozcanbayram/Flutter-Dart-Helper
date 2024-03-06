import 'package:flutter/material.dart';
import 'package:flutter_full_learn_one/product/counter_hello_button.dart';

class StatefulLearn extends StatefulWidget {
  //calss1
  const StatefulLearn({super.key});
  // Bu class Widget'ları içerir.
  // Burası değişmez sadece dışarıdan parametre alır.
  // StatlesWidget gibi çalışır
  // Kısada bu class dışarıyla  haberleşmek için kullanılır (Data al ver gibi.)

  @override
  State<StatefulLearn> createState() => _StatefulLearnState();
}

class _StatefulLearnState extends State<StatefulLearn> {
  //class2
  //Uygulama yaşamı burada şekillenir.
  //İçeriğin yazıldığı yerdir.

  int _countValue = 0;

  /* void incrementValue() {

    setState(() {
      //setState Build'i tekrar tetikler ve değişiklikler ekrana yansır.
      countValue = countValue + 1;
    });
  }

  void deincrementValue() {
    setState(() {
      countValue = countValue - 1;
    });
  } */

  void _updateCounter(bool isIncrament) {
    //Bu metot ile yukarıdaki kodları daha kullanışlı ve OOP'ye uygun hale getirdik.
    if (isIncrament == true) {
      // true ise arttırmak için aşağıda arttırmak istediğimiz nuton için _updateCounter(true) olarak tanımlayacağız
      _countValue = _countValue + 1;
    } else {
      //Azaltmak için ise false parametresini vereceğiz.
      _countValue = _countValue - 1;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: [
          _incrementButton(),
          _deincrementButton(),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              _countValue.toString(),
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge
                  ?.copyWith(color: Colors.amber),
            ),
          ),
          Placeholder(),
          CounterHelloButton(), // counter_hello_button sınıfında gerekli olan tüm kodları hazırladık ve aynı metotların defalarca kez çalışmasını engelledik. Daha önce FloatingActionButton defalarca kez çağrılırdı.
        ],
      ),
    );
  }

  FloatingActionButton _incrementButton() {
    //Extract Method ile buraya yazıldı
    return FloatingActionButton(
      onPressed: () {
        _updateCounter(true);
      },
      child: Icon(Icons.add),
    );
  }

  Padding _deincrementButton() {
    //Extract Method ile buraya yazıldı
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: FloatingActionButton(
        onPressed: () {
          _updateCounter(false);
        },
        child: Icon(Icons.remove),
      ),
    );
  }
}