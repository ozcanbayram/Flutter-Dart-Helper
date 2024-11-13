import 'package:flutter/material.dart';
import 'package:flutter_notes/demos/my_collection_demo.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({super.key});

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn>
    with NavigatorManager {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigator'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          navigateToWidgetPush(context, const MyCollectionDemo());
        },
        child: const Icon(Icons.navigation_rounded),
      ),
    );
  }
}

//! navigator mixin:
mixin NavigatorManager {
  void navigateToWidgetPush(BuildContext context, Widget widget) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        fullscreenDialog: true, //* geri butonu yerine çarpı butonu
        settings: const RouteSettings(),
      ),
    );
  }
}
