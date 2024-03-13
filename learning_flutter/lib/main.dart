import 'package:flutter/material.dart';
import 'package:flutter_full_learn_one/101/button_learn.dart';
import 'package:flutter_full_learn_one/101/card_learn.dart';
import 'package:flutter_full_learn_one/101/custom_widget_learn.dart';
import 'package:flutter_full_learn_one/101/iamge_learn.dart';
import 'package:flutter_full_learn_one/101/icon_learn.dart';
import 'package:flutter_full_learn_one/101/list_tile_learn.dart';
//import 'package:flutter_full_learn_one/lesson_one/container_sized_box_learn.dart';
import 'package:flutter_full_learn_one/101/scaffold_learn.dart';
import 'package:flutter_full_learn_one/101/stack_learn.dart';
import 'package:flutter_full_learn_one/demos/note_demos_view.dart';
import '101/app_bar.dart';
import '101/color_learn.dart';
import '101/column_row_learn.dart';
import '101/indicator_learn.dart';
import '101/list_view_builder.dart';
import '101/list_view_learn.dart';
import '101/navigation_learn.dart';
import '101/padding_learn.dart';
import '101/page_view_learn.dart';
import '101/stateful_learn.dart';
import '101/stateful_life_cycle_learn.dart';
import '101/statless_learn.dart';
import '101/text_filed_learn.dart';
import '202/model_learn_view.dart';
import '202/tab_learn.dart';
import 'demos/audio_book_demos.dart';
import 'demos/chats_screen_demos.dart';
import 'demos/color_demos_view.dart';
import 'demos/my_collections_demos.dart';
import 'demos/stack_demo.dart';
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
          tabBarTheme: TabBarTheme(indicatorSize: TabBarIndicatorSize.label),
          bottomAppBarTheme:
              BottomAppBarTheme(shape: CircularNotchedRectangle()),
          inputDecorationTheme:
              const InputDecorationTheme(), //burada inputları stillendirebiliriz.
          listTileTheme: const ListTileThemeData(
            contentPadding: EdgeInsets.zero,
            iconColor: Colors.black,
          ),
          progressIndicatorTheme:
              const ProgressIndicatorThemeData(color: Colors.amber),
          cardTheme: const CardTheme(
            // Kart tasarımları için tema tasarlama
            shape: RoundedRectangleBorder(),
          ),
          errorColor: ItemsColor
              .renk1, //color_learn sayfasında belirlediğimiz renk sınıfındaki rengi, error rengi olarak thema içerisinde belirledik.
          appBarTheme: const AppBarTheme(
              toolbarTextStyle: TextStyle(color: Colors.black),
              // Burada temalar kullanılara projenin tamamında aynı appBar'ın olması sağlanır.
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0)),
      home: ModelLearnView(),
    );
  }
}
