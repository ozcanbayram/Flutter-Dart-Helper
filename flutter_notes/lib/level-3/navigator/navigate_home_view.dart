import 'package:flutter/material.dart';
import 'package:flutter_notes/product/navigator/navigator_routes.dart';

class NavigateHomeView extends StatefulWidget {
  const NavigateHomeView({super.key});

  @override
  State<NavigateHomeView> createState() => _NavigateHomeViewState();
}

class _NavigateHomeViewState extends State<NavigateHomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(toString())),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.home_filled),
        onPressed: () {
          Navigator.of(context)
              .pushNamed(NavigateRoutesEnum.detail.withParaf, arguments: '123');
        },
      ),
    );
  }
}
