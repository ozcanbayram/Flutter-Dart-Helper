import 'package:flutter/material.dart';

class LightTheme {
  final _lightColor = _LightColor();

  late ThemeData theme; //Theme is will be initilaze.

  LightTheme() {
    theme = ThemeData(
        //APPBAR THEME
        appBarTheme: AppBarTheme(
            backgroundColor: _lightColor.appBarColor,
            shape: const RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(25)))),
        //BACKGROUNDCOLOR (Scaffold)
        scaffoldBackgroundColor:
            const Color.fromARGB(255, 236, 235, 235).withOpacity(0.9),
        //TEXT THEME
        textTheme: ThemeData.light().textTheme.copyWith(
                titleMedium: TextStyle(
              fontSize: 25,
              color: _lightColor._textColor,
            )),
        //BUTTONCOLOR
        buttonTheme: ButtonThemeData(
          colorScheme: ColorScheme.light(
            onPrimary: Colors.purple,
            onSecondary: _lightColor.buttonColor,
          ),
        ),
        //CHECKBOX THEME
        checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateProperty.all(Colors.red),
        ),
        //FLOATINGACTIONBUTTON THEME
        floatingActionButtonTheme:
            FloatingActionButtonThemeData(backgroundColor: Colors.amber));
  }
}

class _LightColor {
  final Color _textColor = Colors.red;
  final Color buttonColor = Color.fromARGB(255, 53, 165, 206);
  final Color appBarColor = Color.fromARGB(255, 155, 219, 6);
}
