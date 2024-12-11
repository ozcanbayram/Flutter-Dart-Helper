

//! Basit bir Shared Preferences ile kaydetme yöntemi. Paket yüklenip native tarafta gerekenler yapıldıktan sonra çalışacaktır.

// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class SharedLearnView extends StatefulWidget {
//   const SharedLearnView({super.key});

//   @override
//   State<SharedLearnView> createState() => _SharedLearnViewState();
// }

// class _SharedLearnViewState extends LoadingStateful<SharedLearnView> {
//   //asagida yazdigimiz LoadingStateful abstract class'ını burada bu şekilde sınıfımıza atayabilriz.
//   int _currentValue = 0;

//   void _onChangeValue(String value) {
//     final value0 = int.tryParse(value);
//     setState(() {
//       if (value0 != null) {
//         _currentValue = value0;
//       }
//       });


//   @override
//   void initState() {
//     super.initState();
//     getSavedData();
//   }

//   Future<void> getSavedData() async {
//     final SharedPreferences prefs = await SharedPreferences.getInstance();
//     final int? counter = prefs.getInt('counter');
//     _onChangeValue(counter.toString());
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(_currentValue.toString()),
//         actions: [
//           isLoading
//               ? Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Center(
//                     child: CircularProgressIndicator(
//                       color: Theme.of(context).primaryColor,
//                     ),
//                   ),
//                 )
//               : const SizedBox.shrink()
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () async {
//           changeLoading();
//           final SharedPreferences prefs = await SharedPreferences.getInstance();
//           await prefs.setInt('counter', _currentValue);
//           changeLoading();
//         },
//         child: const Icon(Icons.save),
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(32.0),
//           child: TextField(
//             onChanged: (value) {
//               _onChangeValue(value);
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }

// // her yerde bir loading animasyonu yapmak yerine bir sınıfta bunu yapabiliriz:
// // burada statefıl widgetlara bu özelliği kazandırdı.
// // generic => T
// abstract class LoadingStateful<T extends StatefulWidget> extends State<T> {
//   bool isLoading = false;
//   void changeLoading() {
//     setState(() {
//       isLoading = !isLoading;
//     });
//   }
// }
