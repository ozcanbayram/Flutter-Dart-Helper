import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAnimationView extends StatefulWidget {
  const LottieAnimationView({super.key});

  @override
  State<LottieAnimationView> createState() => _LottieAnimationViewState();
}

class _LottieAnimationViewState extends State<LottieAnimationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Lottie Animation')),
      ),
      body: Center(
          child: LottieBuilder.network(
              'https://lottie.host/69369150-d7e2-4eb4-9a3b-72b2f388f822/4E3YpZI1zX.json')),
    );
  }
}
