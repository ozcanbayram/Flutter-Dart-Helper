import 'package:flutter/material.dart';
import 'package:flutter_notes/level-1/navigation/navigation_detail.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({super.key});

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn>
    with NavigatorManager {
  List<int> selectedItems = []; //* başta boş olan seçilenler listesi

  void addSelected(int index, bool isAdd) {
    //* seçilen listesine ekleme yapan metot.
    setState(() {
      isAdd ? selectedItems.add(index) : selectedItems.remove(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigator'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return TextButton(
            onPressed: () async {
              final response = await navigateToWidgetPushNextLevel(
                  context,
                  NavigationDetailLearn(
                    isOk: selectedItems.contains(index),
                  ));
              if (response is bool) {
                //diger sayfadan true gelirse
                addSelected(index, response);
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(64.0),
              child: Placeholder(
                color:
                    selectedItems.contains(index) ? Colors.green : Colors.red,
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // final response = await navigateToWidgetPushNextLevel(
          //     context, const NavigationDetailLearn());
          // if (response == true) {
          //   //diger sayfadan true gelirse
          //   print('Gelen değer = $response');
          // }
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

  Future<T?> navigateToWidgetPushNextLevel<T>(
      //* geriye dönecek bir değer verilebilir.
      BuildContext context,
      Widget widget) {
    return Navigator.of(context).push(
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
