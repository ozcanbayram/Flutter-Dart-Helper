import 'package:flutter/material.dart';

class LightTheme {
  ThemeData theme = ThemeData(
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.blueAccent),
      textTheme: ThemeData.light().textTheme.copyWith(
            bodyLarge: const TextStyle(fontSize: 30),
            bodyMedium: const TextStyle(fontSize: 25),
            bodySmall: const TextStyle(fontSize: 20),
          ),
      colorScheme: const ColorScheme.light(
        onPrimary: Colors.red, // gibi proje renk temaları belirlenebilir
        primary: Colors.blueAccent,
      ));
}
