// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_notes/product/widget/callback_dropdown.dart';

class CallBackLearn extends StatefulWidget {
  const CallBackLearn({super.key});

  @override
  State<CallBackLearn> createState() => _CallBackLearnState();
}

class _CallBackLearnState extends State<CallBackLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Call Back Learn'),
      ),
      body: Center(
        child: Column(
          children: [
            // burada CallbackDropdown widgetini kullanalım:
            CallbackDropdown(
              onUserSelected: (user) {
                print('Selected User: $user');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CallBackUser {
  final String name;
  final int id;

  CallBackUser(this.name, this.id);

  // TODO: Dummy users (Remove it later)
  // dummy ne demektir: gerçek verilerin yerine geçici olarak konulan anlamına gelir.
  static List<CallBackUser> dummyUsers() {
    return [
      CallBackUser('John Doe', 1),
      CallBackUser('Jane Doe', 2),
    ];
  }

  @override
  bool operator ==(covariant CallBackUser other) {
    if (identical(this, other)) return true;

    return other.name == name && other.id == id;
  }

  @override
  int get hashCode => name.hashCode ^ id.hashCode;
}
