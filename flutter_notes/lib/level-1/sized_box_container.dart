import 'package:flutter/material.dart';

class SizedBoxView extends StatelessWidget {
  const SizedBoxView({super.key});

  //Sized boc genellikle belirli bir alanı kaplamak için ayarlanır ve kullanılır.
  //Kendine verilen değer kadar yer kaplar.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: const Center(
            child: Text(
          'SizedBox',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        )),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                width: 300,
                height: 200,
                child: Text('Örnek Metin ' * 500),
              ),
              const SizedBox(
                height: 50,
              ),
              const SizedBox.shrink(), // -> belirli bir boş alan bırakır.
              SizedBox.square(
                dimension: 50,
                child: Text('0' * 50),
              ), // -> Kullanmamız için kare bir alan oluşturur.

              //* temel olarak sizedbox bu amaçlar için kullanılır.
            ],
          ),
        ),
      ),
    );
  }
}
