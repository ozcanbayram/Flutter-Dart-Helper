// import 'package:flutter/material.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// class ShareContextLearn extends StatefulWidget {
//   const ShareContextLearn({super.key});

//   @override
//   State<ShareContextLearn> createState() => _ShareContextLearnState();
// }

// enum _SecureKeys { token }

// class _ShareContextLearnState extends State<ShareContextLearn> {
//   final _storage = const FlutterSecureStorage();
//   String _title = '';
//   final TextEditingController _controller = TextEditingController();
//   void saveItems(String data) {
//     setState(() {
//       _title = data;
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     getSecureItems();
//   }

//   Future<void> getSecureItems() async {
//     _title = await _storage.read(key: _SecureKeys.token.name) ?? '';

//     if (_title.isNotEmpty) {
//       // ignore: avoid_print
//       print('eski kullanıcı ve tokeni bu');
//       _controller.text = _title;
//     }
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(_title),
//       ),
//       floatingActionButton: FloatingActionButton.extended(
//           onPressed: () async {
//             await _storage.write(key: _SecureKeys.token.name, value: _title);
//           },
//           label: const Text('Save')),
//       body: Padding(
//         padding: const EdgeInsets.all(32.0),
//         child: Center(
//           child: TextField(
//             controller: _controller,
//             onChanged: saveItems,
//           ),
//         ),
//       ),
//     );
//   }
// }
