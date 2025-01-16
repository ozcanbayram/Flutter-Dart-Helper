import 'package:flutter/material.dart';
import 'package:flutter_notes/product/constants/lottie_items.dart';
import 'package:lottie/lottie.dart';

class LottieLearn extends StatefulWidget {
  const LottieLearn({super.key});

  @override
  State<LottieLearn> createState() => _LottieLearnState();
}

// https://assets3.lottiefiles.com/packages/lf20_ydo1amjs.json

class _LottieLearnState extends State<LottieLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Lottie.asset(LottieItems.themeChange.lottiePath)],
      ),
      body: Center(
        child: Lottie.network(
            'https://lottie.host/c4bb20e8-5175-4d59-bd3e-9fc2c3ba6941/RoAOEbKWZh.json'),
      ),
    );
  }
}
