import 'package:flutter/material.dart';
import 'package:flutter_full_learn_one/product/language/language_items.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  final key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: TextField(
        minLines: 1,
        maxLines: 5, //max satır genişliğini artttırı
        //maxLength: 20,
        buildCounter: (BuildContext,
            {int? currentLength, bool? isFocused, int? maxLength}) {
          return _animatedContainer(currentLength);
        },
        keyboardType: TextInputType.emailAddress, //TextField'in tipi
        autofillHints: [AutofillHints.email], // mail için tahmin
        textInputAction:
            TextInputAction.next, //Bir sonraki fielde geçmek için next
        decoration: _InputDecoration().emailInput,
      ),
    );
  }

  AnimatedContainer _animatedContainer(int? currentLength) {
    //animasyon extract metodu
    return AnimatedContainer(
      key: key,
      duration: Duration(seconds: 1),
      height: 5,
      width: 20.0 * (currentLength ?? 0),
      color: Colors.amber,
    );
  }
}

//Yukarıda deneme yanılma yolu ile bir textFiled yaratıp ona animasyon ve dekorasyon vererek kişiselleştirdim.

class _InputDecoration {
  final emailInput = InputDecoration(
    prefixIcon: Icon(Icons.mail),
    border: OutlineInputBorder(),
    labelText: LanguageItems.mailTitle,
    filled: true,
    fillColor: Colors.red,
  );
}

//Bu dekorasyonları maindeki theme ile de belirleyebliriz.
