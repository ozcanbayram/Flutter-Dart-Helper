import 'dart:developer';

import 'package:flutter/material.dart';

class SheetLearn extends StatefulWidget {
  const SheetLearn({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SheetLearnState createState() => _SheetLearnState();
}

class _SheetLearnState extends State<SheetLearn> {
  Color _backgroundColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sheet Learn'),
      ),
      backgroundColor: _backgroundColor,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.open_in_browser_rounded),
        onPressed: () async {
          //* burasi açilinca asenkron çalisan bir kontrol yapılacak.
          //* if ile result kontrolü
          final result = await showModalBottomSheet(
            backgroundColor: Colors.white,
            isScrollControlled: true,
            barrierColor: const Color.fromARGB(167, 0, 0, 0),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(32))),
            context: context,
            builder: (context) {
              return _CustomSheet(backgroundColor: _backgroundColor);
            },
          );
          inspect(result);
          if (result is bool) {
            setState(() {
              _backgroundColor = Colors.deepOrangeAccent;
            });
          }
        },
      ),
    );
  }
}

class _CustomSheet extends StatefulWidget {
  const _CustomSheet({
    super.key,
    required Color backgroundColor,
  });

  @override
  State<_CustomSheet> createState() => _CustomSheetState();
}

class _CustomSheetState extends State<_CustomSheet> {
  Color _backgroundColor = Colors.blueAccent;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: _backgroundColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: [
                  const Text('Bottom Sheet 1'),
                  Image.network(
                    'https://picsum.photos/200/300',
                    height: 250,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _backgroundColor = Colors.pinkAccent;
                        });
                        //* bottomSheet bu şekilde geriye (gittiği sayfaya) değer döndürebilir.
                        Navigator.of(context).pop<bool>(true);
                      },
                      child: const Text('Change Color'))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
