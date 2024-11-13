import 'package:flutter/material.dart';

class NavigationDetailLearn extends StatefulWidget {
  const NavigationDetailLearn({super.key, this.isOk = false});

  final bool isOk;

  @override
  State<NavigationDetailLearn> createState() => _NavigationDetailLearnState();
}

class _NavigationDetailLearnState extends State<NavigationDetailLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Detail'),
      ),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {
            Navigator.of(context).pop(!widget.isOk);
            //gittiğin sayfaya true değerini döndür.
          },
          label: widget.isOk ? const Text('Reddet') : const Text('Onayla'),
          icon: widget.isOk ? const Icon(Icons.close) : const Icon(Icons.check),
        ),
      ),
    );
  }
}
