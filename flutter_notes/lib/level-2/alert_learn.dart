import 'package:flutter/material.dart';

class AlertLearn extends StatefulWidget {
  const AlertLearn({super.key});

  @override
  State<AlertLearn> createState() => _AlertLearnState();
}

class _AlertLearnState extends State<AlertLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //* Show About Dialog
          showAboutDialog(
            context: context,
            applicationName: 'Flutter Notes',
            applicationIcon: const Icon(Icons.healing_outlined),
            barrierColor: const Color.fromARGB(173, 244, 67, 54),
            barrierDismissible: false, //Arka ekrana tıklamayı önler
            anchorPoint: const Offset(5, 5),
            applicationLegalese: 'İçerik Buraya Yazılır',
            applicationVersion: 'Versiyon 1.0',
            barrierLabel: 'Barrier Label',
            children: [const Text('childeren text')],
          );
        },
        child: const Icon(Icons.message_rounded),
      ),
      body: Center(
        child: Column(
          children: [
            //* Show ShowDialog
            TextButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return const Dialog(
                        child: Text('Opened Custom ShowDialog'),
                      );
                    });
              },
              child: const Text('Custom ShowDialog'),
            ),

            //* Show ShowDialog
            TextButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return const AboutDialog();
                    });
              },
              child: const Text('Custom AboutDialog'),
            ),
            //* Show AlertDialog
            TextButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Opened AlertDialog'),
                        actions: [
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text('Update Version'),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('Close'))
                        ],
                      );
                    });
              },
              child: const Text('Custom AlertDialog'),
            ),
          ],
        ),
      ),
    );
  }
}
