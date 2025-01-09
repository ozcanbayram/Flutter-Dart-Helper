import 'package:flutter/material.dart';
import 'package:flutter_notes/level-3/reqrest_resource/view/reqres_view.dart';
import 'package:flutter_notes/product/global/resource_context.dart';
import 'package:flutter_notes/product/global/theme_notifier.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    // provideri bu şekilde kullanıyoruz.
    providers: [
      Provider(create: (_) => ResourceContext()),
      ChangeNotifierProvider<ThemeNotifier>(
          create: (context) => ThemeNotifier())
    ],
    builder: (context, child) {
      return const MyApp();
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Notes',
      debugShowCheckedModeBanner: false,
      theme: context.watch<ThemeNotifier>().currentTheme,
      // provider ile tema değişikliği yapılıyor.
      home: const ReqresView(),
    );
  }
}
