import 'package:flutter/material.dart';

class IconView extends StatelessWidget {
  IconView({super.key});

  //* Aşağıda oluşturduğumuz sınıfı kullanmak için bu sınıftan bir nesne üretelim.
  final ProjectIconSizes iconSize = ProjectIconSizes();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icons'),
      ),
      body: Center(
        child: Column(
          children: [
            IconButton(
              iconSize: iconSize.iconSmall,
              color: Colors.red,
              onPressed: () {},
              icon: const Icon(Icons.message_outlined),
            ),
            IconButton(
              iconSize: iconSize.iconMedium,
              color: Colors.red,
              onPressed: () {},
              icon: const Icon(Icons.message_outlined),
            ),
            IconButton(
              iconSize: iconSize.iconLarge,
              color: Colors.red,
              onPressed: () {},
              icon: const Icon(Icons.message_outlined),
            ),
          ],
        ),
      ),
    );
  }
}

//* Iconların özelliklerini aşağıdaki gibi sınıf olarak belirleyip her yerde daha kolay kullanabilir ve
//* tek yerden kontrol edilebilir yapabilir. Sadece boyut için değil renk gibi bir çok özellik için bu yöntem uygulanabilir.
//* Tabi bazı özelliklier için tema kullanmak daha avantajlıdır.

class ProjectIconSizes {
  final double iconSmall = 20;
  final double iconMedium = 40;
  final double iconLarge = 60;
}
