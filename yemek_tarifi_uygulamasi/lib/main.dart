import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Yemek Tarifi'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    var screenInfo = MediaQuery.of(context);
    final double widthInfo = screenInfo.size.width;
    final double heightInfo = screenInfo.size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                width: widthInfo,
                child: Image.asset(
                    "resimler/yemek.jpg"
                ),
            ),
            Row(
              children: [
                Expanded(//Sayfada yayılma
                  child: SizedBox( //Boyut
                    height: widthInfo/8,
                    child: TextButton(
                      child: Yazi("Like", widthInfo/25), //Sınıf ile belirlendi
                      onPressed: () {
                        print("Lİked");//Tıklanınca
                      },
                      style: ButtonStyle(//Stillendirme
                        backgroundColor: MaterialStateProperty.all(Colors.blue),//arka renk
                        foregroundColor: MaterialStateProperty.all(Colors.white),//Ön renk
                        shape: MaterialStateProperty.all(//Border Radius icin
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: widthInfo/8,
                    child: TextButton(
                      child: Yazi("Command", widthInfo/25),
                      onPressed: () {
                        print("Commanded");
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.green),
                        foregroundColor: MaterialStateProperty.all(Colors.white),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: widthInfo/60,
                  bottom: widthInfo/60,
                  left: widthInfo/40,
                  right:widthInfo/40,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Et Tava",
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.bold,
                      fontSize: widthInfo/20,
                    ),
                  ),
                  Row(
                    children: [
                      Yazi("Tavada kızarmış et ve sebze", widthInfo/20),
                      Spacer(),
                      Yazi("28 Şubat", widthInfo/20),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: widthInfo/60,
                bottom: widthInfo/60,
                left: widthInfo/40,
                right:widthInfo/40,
              ),
              child: Yazi(
                 "500 gr kuşbaşı doğranmış dana eti, 1 adet doğranmış soğan, 1 adet doğranmış yeşil biber, 1 adet doğranmış domates, 1 yemek kaşığı sıvı yağ, 1 çay kaşığı tuz, 1/2 çay kaşığı karabiber, 1/4 çay kaşığı pul biber (isteğe bağlı)",
                  widthInfo/22
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class Yazi extends StatelessWidget {
  String icerik;
  double boyut;


  Yazi(this.icerik, this.boyut);

  @override
  Widget build(BuildContext context) {
    return Text(icerik,style: TextStyle(fontSize: boyut),);
  }
}

