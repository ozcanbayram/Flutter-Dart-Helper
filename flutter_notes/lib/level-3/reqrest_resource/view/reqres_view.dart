import 'package:flutter/material.dart';
import 'package:flutter_notes/level-3/reqrest_resource/model/resource_model.dart';
import 'package:flutter_notes/level-3/reqrest_resource/product/extension/string_extension.dart';
import 'package:flutter_notes/level-3/reqrest_resource/service/project_dio.dart';
import 'package:flutter_notes/level-3/reqrest_resource/service/reqres_service.dart';
import 'package:flutter_notes/level-3/reqrest_resource/viewModel/reqres_provider.dart';
import 'package:provider/provider.dart';

class ReqresView extends StatefulWidget {
  const ReqresView({super.key});

  @override
  State<ReqresView> createState() => _ReqresViewState();
}

// class _ReqresViewState extends ReqresViewModel {
class _ReqresViewState extends State<ReqresView> with ProjectDioMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ReqresProvider>(
      // provaider ile ReqresViewModel sınıfını kullanıyoruz.
      create: (context) => ReqresProvider(ReqresService(service)),
      builder: (context, child) {
        // eğer ekran tetiklenecek ise scaffol'un burada olması gerekiyor.
        return Scaffold(
          appBar: AppBar(
              title: context.watch<ReqresProvider>().isLoading
                  ? const CircularProgressIndicator(color: Colors.white)
                  : null),
          body: Column(
            children: [
              Selector<ReqresProvider, bool>(
                builder: (context, value, child) {
                  return value
                      ? const Text('Yükleniyor')
                      : const Text('Veriler Yüklendi');
                },
                selector: (context, provider) {
                  return provider.isLoading;
                },
              ),
              Expanded(
                child: _resourceListView(
                    context, context.watch<ReqresProvider>().resource),
              ),
            ],
          ),
        );
      },
    );
  }

  ListView _resourceListView(BuildContext context, List<Data> items) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        // inspect(resource[index]);
        return Card(
            color: Color(items[index].color.colorValue),
            child: Text(
                context.watch<ReqresProvider>().resource[index].name ?? ''));
      },
    );
  }
}
