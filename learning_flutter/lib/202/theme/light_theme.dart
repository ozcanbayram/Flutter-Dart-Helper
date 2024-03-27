import 'package:flutter/material.dart';

class LightTheme {
  final _lightColor = _LightColor();

  late ThemeData theme;

  LightTheme() {
    theme = ThemeData(
      textTheme: ThemeData.light().textTheme.copyWith( //yazı teması
              titleMedium: TextStyle(
            fontSize: 25,
            color: _lightColor._textColor,
          )),
      buttonTheme: ButtonThemeData( //Buton teması
        colorScheme: ColorScheme.light(
          onPrimary: Colors.purple,
          onSecondary: _lightColor.buttonColor,
        ),
      ),
    );
  }
}

class _LightColor {
  final Color _textColor = Colors.red;
  final Color buttonColor = Color.fromARGB(255, 53, 165, 206);
}
