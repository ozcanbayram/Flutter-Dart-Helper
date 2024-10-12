import 'package:flutter/material.dart';
import 'package:flutter_notes/product/counter_hello_button.dart';

//uygulamada bir iş, bir yaşam döngüsü olacağı zamanlarda statefull kullanırız.

class StateFullLearnView extends StatefulWidget {
  // data işlemleri ve değişmeyen kısım
  const StateFullLearnView({super.key});

  @override
  State<StateFullLearnView> createState() => _StateFullLearnViewState();
}

class _StateFullLearnViewState extends State<StateFullLearnView> {
  int _countValue = 0;

  void _updateCounter(bool isIncrement) {
    // if (isIncrement) {
    //   setState(() {
    //     _countValue++;
    //   });
    // } else {
    //   setState(() {
    //     _countValue--;
    //   });
    // }

    //Bu kodu daha kısa yazmak için:
    setState(() {
      _countValue += isIncrement ? 1 : -1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Statefull'),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              _countValue.toString(),
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          const Placeholder(),

          //şimdi bir buton tasarlayalım ve bu butona tıklandıkşa içerisindeki değer artsın. Fakat bunu counter_hello_button sayfasında yazalım.
          // eğer farklı sayfada yazark buraya eklersek bu sayfadaki componentlerden bağımsız çalışır ve bu sayfaya gereğinden fazla yük bindirmez.
          const CounterHelloButton()
        ],
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _IncrementButtons(
            onPressed: () => _updateCounter(false),
            buttonsIcon: const Icon(
              Icons.remove,
            ),
          ),
          _IncrementButtons(
            onPressed: () => _updateCounter(true),
            buttonsIcon: const Icon(
              Icons.add,
            ),
          ),
        ],
      ),
    );
  }
}

class _IncrementButtons extends StatelessWidget {
  const _IncrementButtons({
    required this.onPressed,
    required this.buttonsIcon,
  });

  final Function()? onPressed;
  final Icon buttonsIcon;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: buttonsIcon,
    );
  }
}
