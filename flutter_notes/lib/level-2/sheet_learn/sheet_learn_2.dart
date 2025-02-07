import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_notes/level-2/service/service_learn_view.dart';

class SheetLearn1 extends StatefulWidget {
  const SheetLearn1({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SheetLearnState createState() => _SheetLearnState();
}

class _SheetLearnState extends State<SheetLearn1> with ProductCustomSheet {
  Color _backgroundColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sheet Learn 2'),
      ),
      backgroundColor: _backgroundColor,
      body: Center(
        child: TextButton(
            onPressed: () {
              showCustomSheet(context, const ServiceLearn());
            },
            child: const Text('Show')),
      ),
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
    required Color backgroundColor,
  });

  @override
  State<_CustomSheet> createState() => _CustomSheetState();
}

class _CustomSheetState extends State<_CustomSheet> {
  final _griphHeiht = 30.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: double.infinity,
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: _griphHeiht,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    //* Bu Stack ile sheetin üst kısmını yazalım
                    children: [
                      Positioned(
                        right: 20,
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.close),
                          ),
                        ),
                      ),
                      Divider(
                        //* kısa çizgi
                        color: Colors.black87,
                        thickness: 3,
                        indent: MediaQuery.of(context).size.width * 0.40,
                        endIndent: MediaQuery.of(context).size.width * 0.40,
                      ),
                    ],
                  ),
                ),
                const Text('Bottom Sheet 2'),
                Image.network(
                  'https://picsum.photos/200/300',
                  height: 250,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop<bool>(true);
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

//Mixin
mixin ProductCustomSheet {
  Future<T?> showCustomSheet<T>(BuildContext context, Widget child) async {
    showModalBottomSheet<T>(
      backgroundColor: Colors.white,
      // isScrollControlled: true,
      barrierColor: const Color.fromARGB(167, 0, 0, 0),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(32))),
      context: context,
      builder: (context) {
        return CustomMainSheet(
          child: Expanded(child: child),
        );
      },
    );
    return null;
  }
}

class CustomMainSheet extends StatelessWidget {
  const CustomMainSheet({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [const _SheetsHeader(), Expanded(child: child)],
    );
  }
}

class _SheetsHeader extends StatelessWidget {
  const _SheetsHeader() : _griphHeiht = 30.0;

  final double _griphHeiht;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _griphHeiht,
      child: Stack(
        alignment: Alignment.topCenter,
        //* Bu Stack ile sheetin üst kısmını yazalım
        children: [
          Positioned(
            right: 20,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.close),
              ),
            ),
          ),
          Divider(
            //* kısa çizgi
            color: Colors.black87,
            thickness: 3,
            indent: MediaQuery.of(context).size.width * 0.40,
            endIndent: MediaQuery.of(context).size.width * 0.40,
          ),
        ],
      ),
    );
  }
}
