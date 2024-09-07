import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:ready_custom_widgets/feature/hidden_drawer_menu/main_screen.dart';
import 'package:ready_custom_widgets/feature/hidden_drawer_menu/settings_screen.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];

//? İStersek stilleri aşağıdaki gibi tek yerden de kontrol edebiliriz.
  final myTextStyle = const TextStyle(
      fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white);

  @override
  void initState() {
    super.initState();
    _pages = [
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              colorLineSelected: Colors.white,
              name: 'Home',
              baseStyle: const TextStyle(fontSize: 25),
              selectedStyle: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          const HomePage()),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              colorLineSelected: Colors.white,
              name: 'Settings',
              baseStyle: const TextStyle(fontSize: 25),
              selectedStyle: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          const SettingsPage()),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.deepOrange,
      screens: _pages,
      initPositionSelected: 0,
      slidePercent: 50,
      // contentCornerRadius: 50,
    );
  }
}
