import 'package:flutter/material.dart';

class ContainerSizedBoxLearning extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const SizedBox(
            // SizedBox => Bir kutu oluşturu içerisinde propertyleri vardır.
            width: 100,
            height: 100,
            child: Text(
                'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),
          ),

          SizedBox.shrink(), // Boşluk için kullanılır.

          const SizedBox.square(
            // Kare bir alan oluşturmak için kullanılır
            dimension: 50, //Boyutlandırma.
            child: Text(
                'datadatadatadatadatadatadatadatadatadatadatadatadatadata'),
          ),
          Container(
            height: 50,
            constraints:
                BoxConstraints(maxWidth: 100, minWidth: 50), // Maximum width
            child: const Text('datadatadatadatadatadata'),
            padding: EdgeInsets.all(10.0), //iç boşluk
            margin: EdgeInsets.all(10.0), //dış boşluk
            decoration: ProjectUtility.boxDecoration,
          ),
        ],
      ),
    );
  }
}

//Dekorasyon tasarımının class içierisine aktararak tekrarlı kod yazmayı kolaylaştırabiliriz.
//Bunun için aşağıdaki gibi class tanımları yapabilr ve yukarıdaki gibi bu özellikleri kullanabilriz.

class ProjectUtility {
  static BoxDecoration boxDecoration = BoxDecoration(
    //kutu dekorasyonu
    //shape: BoxShape.circle, //yuvarlak
    //color: Colors.red, //kutu rengi
    gradient: const LinearGradient(
      colors: [Colors.red, Colors.amber],
    ),
    boxShadow: const [
      BoxShadow(color: Colors.black, offset: Offset(0.1, 1), blurRadius: 12)
    ],
    borderRadius: BorderRadius.circular(10),
    //border: Border.all(width: 5)
  );
}

class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      : super(
          //kutu dekorasyonu
          //shape: BoxShape.circle, //yuvarlak
          //color: Colors.red, //kutu rengi
          gradient: const LinearGradient(
            colors: [Colors.red, Colors.amber],
          ),
          boxShadow: const [
            BoxShadow(
                color: Colors.black, offset: Offset(0.1, 1), blurRadius: 12)
          ],
          borderRadius: BorderRadius.circular(10),
          //border: Border.all(width: 5)
        );
}
