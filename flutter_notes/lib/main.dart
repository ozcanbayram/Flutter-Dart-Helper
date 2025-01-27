import 'package:flutter/material.dart';
import 'package:flutter_notes/product/constants/project_items.dart';
import 'package:flutter_notes/product/global/resource_context.dart';
import 'package:flutter_notes/product/global/theme_notifier.dart';
import 'package:flutter_notes/product/navigator/navigator_routes.dart';
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
        title: ProjectItems.projectName,
        debugShowCheckedModeBanner: false,
        theme: context.watch<ThemeNotifier>().currentTheme,
        // provider ile tema değişikliği yapılıyor.

        routes: NavigatorRoutes().items
        //home: const LottieLearn(), // route kullanırken home kullanılmaz.
        );
  }
}
