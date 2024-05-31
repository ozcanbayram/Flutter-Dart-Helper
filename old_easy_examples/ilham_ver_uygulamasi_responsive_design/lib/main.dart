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
      home: const MyHomePage(title: 'Ilham'),
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
    final double widthINfo = screenInfo.size.width;
    final double heightINfo = screenInfo.size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: heightINfo / 150,
              bottom: heightINfo / 50,
            ),
            child: SizedBox(
              width: widthINfo / 2,
              height: heightINfo / 5,
              child: Image.asset(
                "resimler/photo.png",
              ),
            ),
          ),
          Text(
            "Basic project with Flutter",
            style: TextStyle(
              color: Colors.red[400],
              fontWeight: FontWeight.bold,
              fontSize: widthINfo / 25,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              left: widthINfo / 25,
              right: widthINfo / 25,
            ),
            child: Text(
              "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: widthINfo / 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: heightINfo / 25),
            child: SizedBox(
              width: widthINfo / 2,
              height: heightINfo / 25,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red[400]),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
                child: Text(
                  "ILHAM",
                  style: TextStyle(
                    fontSize: widthINfo / 25,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  print("Ilham complated");
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
