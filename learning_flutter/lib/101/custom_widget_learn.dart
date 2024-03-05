import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({super.key});

  final String title = 'Food';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: CustomFoodButton(
                onPressed: () {},
                title: title,
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          CustomFoodButton(
            onPressed: () {},
            title: title,
          ),
        ],
      ),
    );
  }
}

mixin _ColorsUtility {
  final Color redColor = Colors.red;
  final Color whiteColor = Colors.white;
}

mixin _PaddingUtility {
  final EdgeInsets normalPadding = EdgeInsets.all(8);
  final EdgeInsets normalPadding2x = EdgeInsets.all(16);
}

class CustomFoodButton extends StatelessWidget
    with _ColorsUtility, _PaddingUtility {
  CustomFoodButton({super.key, required this.title, required this.onPressed});

  final String title;
  final void Function() onPressed; // onPress metodunu buradan disari cikarttik.

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: redColor,
        shape: StadiumBorder(),
      ),
      onPressed: () {},
      child: Padding(
        padding: normalPadding2x,
        child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(color: whiteColor),
        ),
      ),
    );
  }
}
