// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class StatlessLearn extends StatelessWidget {
  //* extends ile StatlessWidget sınıfının güçlerini kullanabiliriz.
  const StatlessLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StatlessWidget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //* Aşağıda aynı widgetten çok fazla olacak ise,
            //* bunu bir statless ya da statefull widget olarak başka bir yerde yazarak her yerden kullanabiliriz.
            const TitleTextWidget(textWidgetTitle: 'Statless'),
            _emptyBox(),

            const TitleTextWidget(textWidgetTitle: 'Statefull'),
            _emptyBox(),

            const TitleTextWidget(textWidgetTitle: 'Dart'),
            _emptyBox(),

            const TitleTextWidget(textWidgetTitle: 'Kotlin'),
            _emptyBox(),
          ],
        ),
      ),
    );
  }

  SizedBox _emptyBox() => const SizedBox(
      height: 20); // SizedBox widgetini metot halinde yazabiliriz.
}

class TitleTextWidget extends StatelessWidget {
  final String textWidgetTitle;

  const TitleTextWidget({
    super.key,
    required this.textWidgetTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textWidgetTitle,
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
