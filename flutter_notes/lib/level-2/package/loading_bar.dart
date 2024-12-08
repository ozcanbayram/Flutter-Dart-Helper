import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingBarSpinkit extends StatelessWidget {
  const LoadingBarSpinkit({super.key, this.size});

  final double? size;
  final double _defaultSize = 40;

  @override
  Widget build(BuildContext context) {
    return SpinKitRotatingCircle(
      color: Colors.red,
      size: size ?? _defaultSize,
    );
  }
}
