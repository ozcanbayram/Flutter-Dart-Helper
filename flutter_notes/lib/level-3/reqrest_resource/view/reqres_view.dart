import 'package:flutter/material.dart';
import 'package:flutter_notes/level-3/reqrest_resource/product/extension/string_extension.dart';
import 'package:flutter_notes/level-3/reqrest_resource/viewModel/reqres_view_model.dart';

class ReqresView extends StatefulWidget {
  const ReqresView({super.key});

  @override
  State<ReqresView> createState() => _ReqresViewState();
}

class _ReqresViewState extends ReqresViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: isLoading ? const CircularProgressIndicator() : null),
      body: ListView.builder(
        itemCount: resource.length,
        itemBuilder: (context, index) {
          // inspect(resource[index]);
          return Card(
              color: Color(resource[index].color.colorValue ?? 0),
              child: Text(resource[index].name ?? ''));
        },
      ),
    );
  }
}
