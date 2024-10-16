import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_notes/level-1/color_learn.dart';
import 'package:flutter_notes/level-1/scaffold_life_cycle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Notes',
      debugShowCheckedModeBanner: false,

      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),

      theme: ThemeData.dark().copyWith(
          //Burada dark için temaları belirleyebiliriz.
          elevatedButtonTheme: const ElevatedButtonThemeData(
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    Colors.blueAccent,
                  ),
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)))))),
          primaryColor: ColorItems().sulu,
          //? örnek olarak bu sistem tarafından verilen renkleri de ayarlayabiliriz.

          //* Mesela app bar için projenin tamamında geçerli olacak olan temaı belirleyelim:

          appBarTheme: const AppBarTheme(
            //Tüm projenin appBar'ı için geçerlidir.
            backgroundColor: Colors.transparent,
            toolbarHeight: 100,
            elevation: 0,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            centerTitle: true,
          ),
          progressIndicatorTheme:
              const ProgressIndicatorThemeData(color: Colors.amber)),

      //Home:
      home: const StatefullLifeCycleLearn(
        message: 'Ozcsaan',
      ),
    );
  }
}

//Projenin ana ayarları bu sayfada belirlenir. Bu sayfaya extra bir görünüm yükü ya da MaterialApp verilmemelidir.