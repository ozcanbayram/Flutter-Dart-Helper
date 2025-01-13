// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResourceModel _$ResourceModelFromJson(Map<String, dynamic> json) =>
    ResourceModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResourceModelToJson(ResourceModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      year: (json['year'] as num?)?.toInt(),
      color: json['color'] as String?,
      pantoneValue: json['pantoneValue'] as String?,
      price: json['price'] as String?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'year': instance.year,
      'color': instance.color,
      'pantoneValue': instance.pantoneValue,
      'price': instance.price,
    };

// Bu sayfayı açıklayalım:
// 1- Bu sayfada json annotation ile oluşturduğumuz modellerin json serileştirme ve deserileştirme işlemleri yapılmıştır.
// 2- _$ResourceModelFromJson ve _$ResourceModelToJson fonksiyonları ResourceModel sınıfı için json serileştirme ve deserileştirme işlemlerini yapar.
// 3- _$DataFromJson ve _$DataToJson fonksiyonları Data sınıfı için json serileştirme ve deserileştirme işlemlerini yapar.
// 4- Bu sayfada json serileştirme ve deserileştirme işlemleri için gerekli olan kodlar otomatik olarak oluşturulmuştur.
// 5- Bu sayfada oluşturulan kodlar json serileştirme ve deserileştirme işlemlerini yapar.