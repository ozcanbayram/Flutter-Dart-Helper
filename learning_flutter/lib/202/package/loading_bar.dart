import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingBar extends StatelessWidget {
  const LoadingBar({super.key, this.size});

  final double? size;
  final _default_size = 50.0;

  @override
  Widget build(BuildContext context) {
    return SpinKitPianoWave(
      color: Colors.amberAccent,
      size: size ?? _default_size,
      // controller: AnimationController(vsync: this, duration: const Duration(milliseconds: 1000)),
    );
  }
}
