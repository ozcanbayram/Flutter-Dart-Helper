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
        backgroundColor: Colors.red,
        title: const Center(
          child: Text(
            'Custom Loading Bar',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 400,
            height: 200,
            child: Card(
              child: Column(
                children: [
                  SpinKitDancingSquare(
                    size: 80,
                    color: Colors.red,
                  ),
                  Text(
                    'Dancing Square',
                    style: TextStyle(fontSize: 35),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
