import 'package:flutter/material.dart';

class NavigateHomeDetailView extends StatefulWidget {
  const NavigateHomeDetailView({super.key, this.id});

  final String? id;

  @override
  State<NavigateHomeDetailView> createState() => _NavigateHomeDetailViewState();
}

class _NavigateHomeDetailViewState extends State<NavigateHomeDetailView> {
  late String? _id;

  @override
  void initState() {
    super.initState();

    _id = widget.id;

    if (_id == null) {
      //geldiği sayfadaki belirtilen argument'i almak için:
      Future.microtask(
        () {
          final modelId = ModalRoute.of(context)?.settings.arguments;
          setState(() {
            _id = modelId is String ? modelId : widget.id;
          });
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_id ?? ''),
      ),
    );
  }
}
