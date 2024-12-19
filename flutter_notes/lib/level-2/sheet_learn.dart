import 'package:flutter/material.dart';

class SheetLearn extends StatefulWidget {
  const SheetLearn({super.key});

  @override
  _SheetLearnState createState() => _SheetLearnState();
}

Color backgroundColor = Colors.white;

class _SheetLearnState extends State<SheetLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sheet Learn'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.open_in_browser_rounded),
        onPressed: () {
          showModalBottomSheet(
            backgroundColor: Colors.lightGreenAccent,
            isScrollControlled: true,
            barrierColor: const Color.fromARGB(167, 0, 0, 0),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(32))),
            context: context,
            builder: (context) {
              return CustomSheet(
                backgroundColor: backgroundColor,
              );
            },
          );
        },
      ),
    );
  }
}

class CustomSheet extends StatelessWidget {
  CustomSheet({super.key, required this.backgroundColor});
  Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              children: [
                const Text('Bottom Sheet'),
                Image.network(
                  'https://picsum.photos/200/300',
                  height: 250,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState() {
                        backgroundColor = Colors.amber;
                      }
                    },
                    child: const Text('Change Color'))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
