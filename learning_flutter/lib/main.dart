import 'package:flutter/material.dart';
import 'package:flutter_full_learn_one/202/theme/light_theme.dart';

import '202/package_learn_view.dart';

//import 'package:flutter_full_learn_one/lesson_one/text_learn_view.dart';
//import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: LightTheme().theme,

      // ThemeData.dark().copyWith(
      //     tabBarTheme: TabBarTheme(indicatorSize: TabBarIndicatorSize.label),
      //     bottomAppBarTheme:
      //         BottomAppBarTheme(shape: CircularNotchedRectangle()),
      //     inputDecorationTheme:
      //         const InputDecorationTheme(), //burada inputları stillendirebiliriz.
      //     listTileTheme: const ListTileThemeData(
      //       contentPadding: EdgeInsets.zero,
      //       iconColor: Colors.black,
      //     ),
      //     progressIndicatorTheme:
      //         const ProgressIndicatorThemeData(color: Colors.amber),
      //     cardTheme: const CardTheme(
      //       // Kart tasarımları için tema tasarlama
      //       shape: RoundedRectangleBorder(),
      //     ),
      //     errorColor: ItemsColor
      //         .renk1, //color_learn sayfasında belirlediğimiz renk sınıfındaki rengi, error rengi olarak thema içerisinde belirledik.
      //     appBarTheme: const AppBarTheme(
      //         toolbarTextStyle: TextStyle(color: Colors.black),
      //         // Burada temalar kullanılara projenin tamamında aynı appBar'ın olması sağlanır.
      //         centerTitle: true,
      //         backgroundColor: Colors.transparent,
      //         elevation: 0)),
      home: PackageLearnView(),
    );
  }
}
