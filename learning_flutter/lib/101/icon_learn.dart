import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({super.key});
  final IconSize firstIconSize = IconSize();
  final IconColor firstColor = IconColor();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.account_balance_outlined),
            color: Colors.amber, // Renk burada belirlenir
            iconSize: firstIconSize.firstIconSize,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.account_balance_outlined),
            color: Theme.of(context)
                .colorScheme
                .background, // Temaya göre kendisi rengini ayarlar
            iconSize: firstIconSize.secondIconSize,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons
                .account_balance_outlined), // Renk önceden yazılan sınıf ile alınır
            color: firstColor.firstColor,
            iconSize: 30,
          ),
        ],
      ),
    );
  }
}

class IconSize {
  final double firstIconSize = 50;
  final double secondIconSize = 40;
}

class IconColor {
  final Color firstColor = Colors.teal;
}
