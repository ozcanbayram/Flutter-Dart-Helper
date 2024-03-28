import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({super.key, this.contorller});

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
  final TextEditingController? contorller;
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _isSecure = true;

  void changeSecure() {
    setState(() {
      _isSecure = !_isSecure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.contorller,
      autofillHints: [AutofillHints.password],
      keyboardType: TextInputType.visiblePassword,
      obscureText: _isSecure,
      obscuringCharacter: '*',
      decoration: InputDecoration(
        border: UnderlineInputBorder(),
        hintText: 'Password',
        //suffix: Icon(Icons.password)),
        suffixIcon: _onVisibilityIcon(),
      ),
    );
  }

  IconButton _onVisibilityIcon() {
    return IconButton(
      onPressed: () {
        changeSecure();
      },
      icon: AnimatedCrossFade(
          firstChild: Icon(Icons.visibility_outlined),
          secondChild: Icon(Icons.visibility_off_outlined),
          crossFadeState:
              _isSecure ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: Duration(milliseconds: 500)),
      //icon: Icon(_isSecure ? Icons.visibility : Icons.visibility_off),
    );
  }
}
