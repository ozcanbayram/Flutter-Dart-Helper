import 'package:flutter/material.dart';

class TextLearningView extends StatelessWidget {
  TextLearningView({super.key, this.userName});
  final String name = 'Ozcan';
  final String? userName;
  final ProjectKeys keys = ProjectKeys();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello $name ${name.length}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: const TextStyle(
                wordSpacing: 2,
                letterSpacing: 2,
                color: Colors.amber,
                fontSize: 16,
                fontStyle: FontStyle.italic,
                //decoration: TextDecoration.underline
              ),
            ),
            Text(
              'Welcome',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: ProjectStyles.welcomeStyle,
            ),
            Text(
              'Theme ile yazı stili',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline5?.copyWith(
                    color: ProjectColor.firstColor,
                  ),
            ),
            Text(userName ?? ''), //Controlling Nullable
            Text(keys.welcome), //class ile belirlendi yukarıda keys'e atandı ve yazdırıldı.
          ],
        ),
      ),
    );
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
    wordSpacing: 2,
    letterSpacing: 2,
    color: Colors.red,
    fontSize: 16,
    fontStyle: FontStyle.italic,
    //decoration: TextDecoration.underline
  );
}

class ProjectColor {
  static Color firstColor = Colors.teal;
}

class ProjectKeys {
  final String welcome = 'Merhaba';
}
