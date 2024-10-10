import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  //mixin sınıfını burada tanımlarak renkleri direkt kullanabiliriz.
  const CustomWidget({super.key});

  final String title = 'Food';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Widget'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Center(
                child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: CustomFoodButton(
                title: title,
                onPressed: () {},
              ),
            )),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Center(
                child: CustomFoodButton(
              title: title,
              onPressed: () {},
            )),
          ),
        ],
      ),
    );
  }
}

mixin _ColorUtility {
  final Color blueColor = Colors.blueAccent;
  final Color whiteColor = Colors.white;
}

mixin _PaddingUtility {
  final normalPadding = const EdgeInsets.all(8);
  final normal2xPadding = const EdgeInsets.all(16);
}

class CustomFoodButton extends StatelessWidget
    with _ColorUtility, _PaddingUtility {
  CustomFoodButton({super.key, required this.title, required this.onPressed});

  final String title;

  //!onPress özelliğini dışarı çıkarabilmek için:
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: whiteColor, shape: const StadiumBorder()),
      onPressed: () {},
      child: Padding(
        padding: normal2xPadding,
        child: Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: blueColor,
              ),
        ),
      ),
    );
  }
}
