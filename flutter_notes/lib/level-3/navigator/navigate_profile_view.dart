import 'package:flutter/material.dart';

class NavigateProfileView extends StatefulWidget {
  const NavigateProfileView({super.key});

  @override
  State<NavigateProfileView> createState() => _NavigateProfileViewState();
}

class _NavigateProfileViewState extends State<NavigateProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(toString()),
      ),
    );
  }
}
