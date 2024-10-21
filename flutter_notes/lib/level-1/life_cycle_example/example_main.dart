import 'package:flutter/material.dart';

class ExampleMain extends StatefulWidget {
  const ExampleMain({super.key, required this.initialText});

  final String? initialText;

  @override
  State<ExampleMain> createState() => _ExampleMainState();
}

class _ExampleMainState extends State<ExampleMain> {
  String? pageDefault;

  void changePageText(String pageText) {
    setState(() {
      if (pageDefault != null) {
        pageDefault = pageText;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    pageDefault = widget.initialText ?? 'Anasayfa';
  }

  @override
  void didUpdateWidget(covariant ExampleMain oldWidget) {
    super.didUpdateWidget(oldWidget);
    // print(oldWidget.initialText != pageDefault && widget.initialText != null); // -> debugg control
    if (oldWidget.initialText != pageDefault && widget.initialText != null) {
      changePageText(widget.initialText!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text('Example Main'),
      ),
      body: Center(
          child: Text(pageDefault!,
              style: Theme.of(context).textTheme.headlineMedium)),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blueGrey,
          onTap: _updatePageText,
          items: const [
            BottomNavigationBarItem(
                icon: _customIconWidget(
                  icon: Icon(Icons.settings),
                ),
                label: 'Ayarlar Sayfası'),
            BottomNavigationBarItem(
                icon: _customIconWidget(
                  icon: Icon(Icons.search),
                ),
                label: 'Arama Sayfası'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: 'Profil Sayfası'),
          ]),
    );
  }

  void _updatePageText(value) {
    if (value == _MyPages.settings.index) {
      changePageText('Ayarlar Sayfası');
    } else if (value == _MyPages.search.index) {
      changePageText('Arama Sayfası');
    } else if (value == _MyPages.profile.index) {
      changePageText('Profil Sayfası');
    }
  }
}

// ignore: camel_case_types
class _customIconWidget extends StatelessWidget {
  const _customIconWidget({
    required this.icon,
  });

  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return icon;
  }
}

enum _MyPages { settings, search, profile }
