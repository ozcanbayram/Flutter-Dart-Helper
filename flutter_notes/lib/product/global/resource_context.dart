import 'package:flutter_notes/level-3/reqrest_resource/model/resource_model.dart';

class ResourceContext {
  ResourceModel? model;

  void saveModel(ResourceModel? model) {
    this.model = model;
  }
}
