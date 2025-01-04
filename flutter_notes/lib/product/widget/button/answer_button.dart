import 'dart:math';
import 'package:flutter/material.dart';

class AnswerButton extends StatefulWidget {
  const AnswerButton({super.key, this.onNumber});
  final bool Function(int number)? onNumber;

  @override
  State<AnswerButton> createState() => _AnswerButtonState();
}

class _AnswerButtonState extends State<AnswerButton> {
  @override
  Widget build(BuildContext context) {
    //random bir sayı dön
    //sayiyi kontrol et ve cevcaba göre ekranı güncelle
    //cevap doğru ise yeşil, yanlış ise kırmızı renk olsun
    Color? bgColor;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: bgColor),
      onPressed: () {
        final result = Random().nextInt(10);
        final response = widget.onNumber?.call(result) ?? false;
        if (response) {
          setState(() {
            bgColor = response ? Colors.green : Colors.red;
          });
        }
      },
      child: const Text('Answer Button'),
    );
  }
}
