import 'package:flutter/material.dart';
import 'package:flutter_notes/level-2/package/loading_bar.dart';

class PackageExampleView extends StatefulWidget {
  const PackageExampleView({super.key});

  @override
  State<PackageExampleView> createState() => _PackageExampleViewState();
}

class _PackageExampleViewState extends State<PackageExampleView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Spinkit Package'),
      ),
      body: const LoadingBarSpinkit(),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }
}
