import 'package:flutter/material.dart';

class LightTheme {
  final _lightColor = _LightColor();

  late ThemeData theme;

  LightTheme() {
    theme = ThemeData(
      appBarTheme: AppBarTheme(
          backgroundColor: _lightColor.appBarColor,
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(25)))),
      scaffoldBackgroundColor: Colors.white.withOpacity(0.9),
      textTheme: ThemeData.light().textTheme.copyWith(
              //yazı teması
              titleMedium: TextStyle(
            fontSize: 25,
            color: _lightColor._textColor,
          )),
      buttonTheme: ButtonThemeData(
        //Buton teması
        colorScheme: ColorScheme.light(
          onPrimary: Colors.purple,
          onSecondary: _lightColor.buttonColor,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.all(Colors.red),
      ),
    );
  }
}

class _LightColor {
  final Color _textColor = Colors.red;
  final Color buttonColor = Color.fromARGB(255, 53, 165, 206);
  final Color appBarColor = Color.fromARGB(255, 155, 219, 6);
}
