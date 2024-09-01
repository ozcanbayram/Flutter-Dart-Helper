import 'package:flutter/material.dart';
//! Spinkit paketini import edelim:
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingBar extends StatefulWidget {
  const LoadingBar({super.key});

  @override
  State<LoadingBar> createState() => tLoadingBarState();
}

// ignore: camel_case_types
class tLoadingBarState extends State<LoadingBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Loading Bar'),
      ),
      body: const Center(
        child: SpinKitChasingDots(
          color: Colors.red,
          size: 50,
        ),
      ),
    );
  }
}
