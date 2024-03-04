import 'package:flutter/material.dart';
import 'package:flutter_full_learn_one/101/button_learn.dart';
import 'package:flutter_full_learn_one/101/card_learn.dart';
import 'package:flutter_full_learn_one/101/icon_learn.dart';
//import 'package:flutter_full_learn_one/lesson_one/container_sized_box_learn.dart';
import 'package:flutter_full_learn_one/101/scaffold_learn.dart';

import '101/app_bar.dart';
import '101/color_learn.dart';
import '101/padding_learn.dart';
import '101/statless_learn.dart';
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
      theme: ThemeData.dark().copyWith(
          cardTheme: CardTheme(
            // Kart tasarımları için tema tasarlama
            shape: RoundedRectangleBorder(),
          ),
          errorColor: ItemsColor
              .renk1, //color_learn sayfasında belirlediğimiz renk sınıfındaki rengi, error rengi olarak thema içerisinde belirledik.
          appBarTheme: AppBarTheme(
              // Burada temalar kullanılara projenin tamamında aynı appBar'ın olması sağlanır.
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0)),
      home: CardLearn(),
    );
  }
}
