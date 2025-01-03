import 'package:flutter/material.dart';
import 'package:flutter_notes/level-3/callback_learn.dart';

class CallbackDropdown extends StatefulWidget {
  const CallbackDropdown({super.key, required this.onUserSelected});

  final void Function(CallBackUser user)
      onUserSelected; // burada fonksiyonu parametre olarak alıyoruz.
  // amacı seçilen user'ı dışarıya göndermek. bir nevi callback fonksiyonu.
  // bu sayede seçilen user'ı dışarıya gönderebiliriz.

  @override
  State<CallbackDropdown> createState() => _CallbackDropdownState();
}

class _CallbackDropdownState extends State<CallbackDropdown> {
  CallBackUser? _user;

  void updateUser(CallBackUser? user) {
    setState(() {
      _user = user;
    });
    if (user != null) {
      widget.onUserSelected(user);
    }
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: _user,
      items: CallBackUser.dummyUsers().map(
        (e) {
          return DropdownMenuItem(
            value: e,
            child:
                Text(e.name, style: Theme.of(context).textTheme.headlineMedium),
          );
        },
      ).toList(),
      onChanged: updateUser,
    );
  }
}
