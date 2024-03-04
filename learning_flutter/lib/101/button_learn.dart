import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Learning'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {},
              child: Text('TextButton'),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.amber)),
            ),
            ElevatedButton(
              // birçok buton null değeri alabilir. Disable özelliğini kazanır.
              onPressed: () {},
              child: Text('ElevatedButton'),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.accessible_forward_rounded),
            ),
            FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.add),
            ),
            OutlinedButton(
              onPressed: () {
                //servise istek at
                //sayfa rengini düzenle
              },
              child: SizedBox(width: 150, child: Text('OutlinedButton')),
              style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.cyanAccent,
                  padding: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder()),
            ),
            OutlinedButton.icon(
              //Her buton için .icon kullanılır.
              onPressed: () {},
              icon: Icon(Icons.accessibility_rounded),
              label: Text('Outline.icon'),
            ),
            InkWell(onTap: () {}, child: Text('InkWell')),
            Container(
              height: 50,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              ),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 20, left: 30, right: 30),
                child: Text(
                  'Designed Elevated Button',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Borders:
// CircleBorder(), RoundRactangleBorder()