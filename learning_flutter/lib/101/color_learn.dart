import 'package:flutter/material.dart';

class ColorsLearnView extends StatelessWidget {
  const ColorsLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Learning'),
      ),
      body: Container(
          //color: Theme.of(context).colorScheme.error, arkaplan container rengi
          child: Text(
        'dasd',
        style: Theme.of(context)
            .textTheme
            .titleMedium
            ?.copyWith(color: Theme.of(context).colorScheme.error),
      )),
    );
  }
}

class ItemsColor {
  static final renk1 = Color.fromARGB(255, 113, 207, 47);
}
