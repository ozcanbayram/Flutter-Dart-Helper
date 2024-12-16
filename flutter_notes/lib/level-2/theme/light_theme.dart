import 'package:flutter/material.dart';

class LightTheme {
  ThemeData theme = ThemeData(
      scaffoldBackgroundColor: Colors.white.withOpacity(0.9),
      appBarTheme: const AppBarTheme(
          centerTitle: true,
          color: Colors.deepPurpleAccent,
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(16)))),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.blueAccent),
      textTheme: ThemeData.light().textTheme.copyWith(
            bodyLarge: const TextStyle(fontSize: 30),
            bodyMedium: const TextStyle(fontSize: 25),
            bodySmall: const TextStyle(fontSize: 20),
          ),
      colorScheme: const ColorScheme.light(
        onPrimary: Colors.white, // gibi proje renk temaları belirlenebilir
        primary: Colors.blueAccent,
      ),
      checkboxTheme: CheckboxThemeData(
          fillColor: WidgetStateProperty.all(
            Colors.green,
          ),
          side: const BorderSide(color: Colors.green)),
      inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.deepPurpleAccent,
              ),
              borderRadius: BorderRadius.all(Radius.circular(16.0)))));
}
