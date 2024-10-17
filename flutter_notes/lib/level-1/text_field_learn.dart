import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextField'),
      ),
      body: Column(
        children: [
          TextField(
            //* bir sonraki field'a geçmek için ya da tamamlamak için:
            textInputAction: TextInputAction.next,

            keyboardType: TextInputType.emailAddress,
            // number, phone ... gibi input ayarları yapılabilir.

            maxLength: 50,

            autofillHints: const [AutofillHints.email],
            // otomotik tamamlama özelliği

            //* Kendi harf sayaçı gibi özel görünümlerimizi de yazabiliriz:

            buildCounter: (context,
                {required currentLength,
                required isFocused,
                required maxLength}) {
              return _animatedContainer(currentLength);
            },
            decoration: const InputDecoration(
              labelText: 'Mail',
              // hintText: 'Mail',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.mail),
              // filled: true,
              // fillColor: Color.fromARGB(255, 60, 60, 60),
            ),

            //* Kendi cutom logiclerimizi, özelliklerimizi yazabiliriz. mesela klavyede a tuşuna basılmasını istemiyorsak:
            //* Ayrı bir sınıfta yazılabilir.
            inputFormatters: [
              TextInputFormatter.withFunction(
                (oldValue, newValue) {
                  if (newValue.text == "a") {
                    return oldValue;
                  }
                  return oldValue;
                },
              ),
            ],
          ),
          TextField(
            minLines: 1,
            maxLines: 5,
            decoration: _InputDecorator().adresInput,
          ),
        ],
      ),
    );
  }

  AnimatedContainer _animatedContainer(int currentLength) {
    return AnimatedContainer(
      height: 15,
      width: 10 * currentLength.toDouble(),
      color: Colors.green,
      duration: const Duration(milliseconds: 500),
    );
  }
}

class _InputDecorator {
  final adresInput = const InputDecoration(
    labelText: 'Adres',
    // hintText: 'Mail',
    border: OutlineInputBorder(),
    prefixIcon: Icon(Icons.mail),
    // filled: true,
    // fillColor: Color.fromARGB(255, 60, 60, 60),
  );
}
