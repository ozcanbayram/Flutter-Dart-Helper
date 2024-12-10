import 'package:flutter/material.dart';

class WidgetSizeEnumExample extends StatefulWidget {
  const WidgetSizeEnumExample({super.key});

  @override
  State<WidgetSizeEnumExample> createState() => _WidgetSizeEnumExampleState();
}

class _WidgetSizeEnumExampleState extends State<WidgetSizeEnumExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Widget Size Enum Example'),
        ),
        body: Center(
          child: Card(
            child: Container(
              color: Colors.green,
              width: WidgetSizesEnum.largeCardHeight.value(),
              height: WidgetSizesEnum.largeCardHeight.value(),
            ),
          ),
        ));
  }
}

//* Projelerde her yerde tek tek boyut vermek yerine bu kullanım örneğinde olduğu gibi daha kullanışlı vbir yöntem ile boyut belirleyebilirsiniz.
enum WidgetSizesEnum { normalCardHeight, largeCardHeight, circleProfileHeight }

extension WidgetSizesEnumExtension on WidgetSizesEnum {
  double value() {
    switch (this) {
      case WidgetSizesEnum.normalCardHeight:
        return 50.0;
      case WidgetSizesEnum.circleProfileHeight:
        return 25.0;
      case WidgetSizesEnum.largeCardHeight:
        return 100;
    }
  }
}
