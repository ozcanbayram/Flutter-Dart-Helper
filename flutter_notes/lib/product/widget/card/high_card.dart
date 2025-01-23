import 'package:flutter/material.dart';

class HighCard extends StatelessWidget {
  const HighCard({super.key, required this.items});

  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        items.join(' '),
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}
