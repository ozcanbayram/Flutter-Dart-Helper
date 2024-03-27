import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class PackageLearnView extends StatefulWidget {
  const PackageLearnView({super.key});

  @override
  State<PackageLearnView> createState() => _PackageLearnViewState();
}

class _PackageLearnViewState extends State<PackageLearnView>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('✨ Flutter Spinkit #'),
      ),
      body: Center(
        child: SpinKitCubeGrid(
          color: Colors.amberAccent,
          size: 50.0,
          controller: AnimationController(
              vsync: this, duration: const Duration(milliseconds: 1000)),
        ),
      ),
    );
  }
}

// flutter_spinkit: ^5.2.1 paketi örnek olarak kullanıldı.