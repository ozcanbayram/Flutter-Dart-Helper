import 'package:flutter/material.dart';
import 'package:flutter_full_learn_one/202/package/loading_bar.dart';
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).buttonTheme.colorScheme?.onSecondary,
      ),
      body: Column(
        children: [
          Text(
            'data',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          LoadingBar(),
        ],
      ),
    );
  }
}

// flutter_spinkit: ^5.2.1 paketi örnek olarak kullanıldı.