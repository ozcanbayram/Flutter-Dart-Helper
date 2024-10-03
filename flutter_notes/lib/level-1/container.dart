import 'package:flutter/material.dart';

class ContainerView extends StatelessWidget {
  const ContainerView({super.key});

  //Sized boc genellikle belirli bir alanı kaplamak için ayarlanır ve kullanılır.
  //Kendine verilen değer kadar yer kaplar.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: const Center(
            child: Text(
          'Container',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        )),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                width: 250, // genislik
                height: 250, // uzunluk
                constraints:
                    const BoxConstraints(maxWidth: 500, maxHeight: 500),
                // max/min uzunluk/ genislik özellikleri
                // max widht verildiği için içeriğe göre verilen değerde genişleyebilir.

                padding: const EdgeInsets.all(8),
                //* -> içerisinde padding değeri verilebilri.

                margin: const EdgeInsets.all(64),
                //* dışardan mesafe vermek için margin kullanılabilri.

                decoration: BoxDecoration(
                    color: Colors.amber,
                    shape: BoxShape.circle,
                    // borderRadius:  BorderRadius.circular(10), // -> kenarlara radius verir
                    border: Border.all(width: 10, color: Colors.white),
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromARGB(59, 240, 240, 239),
                          offset: Offset(0, -10)),
                    ],
                    gradient: const LinearGradient(
                        colors: [Colors.red, Colors.amber])),
                //* decoration -> sitil vermek için (shape ile yuvarlak vs.. yapılabilir)
                //* Border ile çeşitli kenarlık şekilleri verilebilir.
                //* Shadow ile gölge verilir (Offest -> gölgenin konumları)

                child: const Padding(
                  padding: EdgeInsets.only(top: 64.0),
                  child: Text(
                    'Container',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
                  ),
                ),
              ),

              //! Containet'in özelliklerini burada belirlemek yerine bir sınıf içerisinde belirleyerek
              //! dilediğimiz yerde kolayca kullanabiliriz. Örnenğin:

              Container(
                width: 250, // genislik
                height: 250, // uzunluk
                constraints:
                    const BoxConstraints(maxWidth: 500, maxHeight: 500),
                // max/min uzunluk/ genislik özellikleri
                // max widht verildiği için içeriğe göre verilen değerde genişleyebilir.
                padding: const EdgeInsets.all(8),
                //* -> içerisinde padding değeri verilebilri.
                margin: const EdgeInsets.all(64),
                //* dışardan mesafe vermek için margin kullanılabilri.

                decoration: ProjectContainersStyle.containerStyle,
                //* Bu şekilde sınıfta berlirlenen sitil özelliklerini kolaylıkla burada kullanabiliriz.

                child: const Padding(
                  padding: EdgeInsets.only(top: 64.0),
                  child: Text(
                    'Container',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectContainersStyle {
  static BoxDecoration containerStyle = BoxDecoration(
      color: Colors.amber,
      shape: BoxShape.circle,
      // borderRadius:  BorderRadius.circular(10), // -> kenarlara radius verir
      border: Border.all(width: 10, color: Colors.white),
      boxShadow: const [
        BoxShadow(
          color: Color.fromARGB(59, 240, 240, 239),
          offset: Offset(0, -10),
        )
      ],
      gradient: const LinearGradient(colors: [Colors.red, Colors.amber]));
}

//! Aynı işleve yarayan bir diğer sınıf kullanım şekli:

class ProjectContainersDecoration extends BoxDecoration {
  // extends ve super kullanılarak hazırlanan sınıf
  ProjectContainersDecoration()
      : super(
          color: Colors.amber,
          shape: BoxShape.circle,
          // borderRadius:  BorderRadius.circular(10), // -> kenarlara radius verir
          border: Border.all(width: 10, color: Colors.white),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(59, 240, 240, 239),
              offset: Offset(0, -10),
            )
          ],
          gradient: const LinearGradient(
            colors: [Colors.red, Colors.amber],
          ),
        );
}
