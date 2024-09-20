import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CustomSlidabeWidget extends StatefulWidget {
  const CustomSlidabeWidget({super.key});

  @override
  State<CustomSlidabeWidget> createState() => Custom_SlidabeWidgetState();
}

// ignore: camel_case_types
class Custom_SlidabeWidgetState extends State<CustomSlidabeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Slidable Widget',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        )),
        backgroundColor: Colors.blueGrey,
      ),
      body: Slidable(
        startActionPane: ActionPane(
          motion: const StretchMotion(),
          children: [
            SlidableAction(
              onPressed: (context) {
                //yapmak istediğimiz işlemleri burada yaparız
              },
              icon: Icons.phone,
              backgroundColor: Colors.lightGreenAccent,
            ),
          ],
        ),
        endActionPane: ActionPane(motion: const StretchMotion(), children: [
          SlidableAction(
            onPressed: (context) {},
            icon: Icons.message,
            backgroundColor: Colors.lightBlueAccent,
          )
        ]),
        child: Container(
          color: Colors.grey[300],
          child: const ListTile(
            title: Text('Özcan Bayram'),
            subtitle: Text('0532444****'),
            leading: Icon(
              Icons.person,
              size: 40,
            ),
          ),
        ),
      ),
    );
  }
}
