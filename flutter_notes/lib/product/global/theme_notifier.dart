import 'package:flutter/material.dart';
import 'package:flutter_notes/level-2/theme/light_theme.dart';

class ThemeNotifier extends ChangeNotifier {
  bool isLightTheme = false;

  void changeTheme() {
    isLightTheme = !isLightTheme;
    notifyListeners();
  }

  ThemeData get currentTheme =>
      !isLightTheme ? LightTheme().theme : ThemeData.dark();
  // düzeltme:   isLightTheme ? ThemeData.light() : ThemeData.dark();
}
