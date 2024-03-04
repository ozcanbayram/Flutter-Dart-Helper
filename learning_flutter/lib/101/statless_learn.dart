import 'package:flutter/material.dart';

class StatlessLearn extends StatelessWidget {
  const StatlessLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TitleTextWidget(title: 'Flutter1'),
          _EmptyBox(),
          TitleTextWidget(title: 'Flutter2'),
          _EmptyBox(),
          TitleTextWidget(title: 'Flutter3'),
          _EmptyBox(),
          TitleTextWidget(title: 'Flutter4'),
          _EmptyBox(),
          CustomContainer(),
        ],
      ),
    );
  }

  SizedBox _EmptyBox() => SizedBox(
        height: 50,
      );
}

class CustomContainer extends StatelessWidget {
  //(Extract Widget olarak hazırlandı)
  //Eğer _CustomContainer şeklinde başında _ olarak tanımlarsak sadece bu dosyadan erişilir. diğer sayflaradan kullanılamaz.
  const CustomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
          color: Colors.amberAccent, borderRadius: BorderRadius.circular(20)),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headlineSmall,
    );
  }
}
