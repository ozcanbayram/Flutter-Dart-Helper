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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
      backgroundColor: Colors.amber[200],
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding:  EdgeInsets.only(
                  bottom: heightInfo/20,
                ),
                child: SizedBox(
                  width: widthInfo/4,
                  height: heightInfo/10,
                  child: Image.asset("resimler/flutter.ico"),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: widthInfo/10,
                  right: widthInfo/10,
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "User name",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: heightInfo/50,
                  left: widthInfo/10,
                  right: widthInfo/10,
                  bottom: widthInfo/50,
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(heightInfo/30),
                child: SizedBox(
                  width: widthInfo/1.6,
                  height:50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blueGrey),
                      shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                      onPressed: () {
                        print("Log in selected.");
                      },
                      child: Text("Giriş Yap",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: widthInfo/23,
                      ),
                      ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  print("Help selected");
                },
                child: Text(
                    "Yardım?",
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: widthInfo/25,
                      fontWeight: FontWeight.bold,
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
