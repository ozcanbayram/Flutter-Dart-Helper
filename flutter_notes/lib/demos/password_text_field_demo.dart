import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({super.key, this.textEditinController});

  final TextEditingController? textEditinController;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  final String _hintText = 'Password';
  final String _obsourceText = '.';
  bool _isSecure = true;

  void _changeVisibility() {
    setState(() {
      _isSecure = !_isSecure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: TextField(
        autofillHints: const [AutofillHints.password],
        keyboardType: TextInputType.phone,
        obscureText: _isSecure,
        obscuringCharacter: _obsourceText,
        decoration: InputDecoration(
          border: const UnderlineInputBorder(),
          hintText: _hintText,
          suffix: _onVisibilityIcon(),
        ),
      ),
    );
  }

  IconButton _onVisibilityIcon() {
    return IconButton(
      onPressed: _changeVisibility,
      //animasyon kullanarak görünürlüğü değiştirelim
      icon: AnimatedCrossFade(
        firstChild: const Icon(Icons.visibility_outlined),
        secondChild: const Icon(Icons.visibility_off_outlined),
        crossFadeState:
            _isSecure ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        duration: const Duration(seconds: 1),
      ),

      // icon: Icon(_isSecure ? Icons.visibility : Icons.visibility_off),
    );
  }
}
